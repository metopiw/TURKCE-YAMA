# Eslabong Turkce Yama uygulayici
# Kullanim: bu dosyayi cift tiklayin, oyun klasorunu gosterin. Hepsi bu.
# Gereksinim: Python 3.10+ ve `py -m pip install pycryptodome`
import hashlib
import os
import struct
import sys

KEY = bytes.fromhex('91223dfd42f2aeb76ebaf96215243ba7475b342604669caf94ddf8854ed0f57d')
BASE = os.path.dirname(os.path.abspath(__file__))
GDC_KIT = os.path.join(BASE, 'Scripts', 'Autoloads', 'Localization.gdc')
TR_KIT = os.path.join(BASE, 'Localization', 'tr.json')
YEDEK_ADI = 'eslabong.pck.ORIJINAL_YEDEK'


def o(msg):
    try:
        print(msg)
    except UnicodeEncodeError:
        print(msg.encode('ascii', 'replace').decode('ascii'))


def bul_oyun_klasoru():
    aday = os.path.join(BASE, 'eslabong.pck')
    if os.path.isfile(aday):
        return BASE
    o('eslabong.pck bu klasorde bulunamadi.')
    while True:
        klasor = input('Oyun klasorunu yazin (icinde eslabong.pck olmali): ').strip().strip('"')
        if os.path.isfile(os.path.join(klasor, 'eslabong.pck')):
            return klasor
        o('Orada eslabong.pck yok, tekrar deneyin.')


def dizin_coz(pck_yolu):
    from Crypto.Cipher import AES
    with open(pck_yolu, 'rb') as f:
        baslik = f.read(40)
        if baslik[:4] != b'GDPC':
            raise RuntimeError('Bu dosya Godot PCK degil.')
        dosya_taban, dizin_ofset = struct.unpack('<2Q', baslik[24:40])
        f.seek(dizin_ofset)
        adet = struct.unpack('<I', f.read(4))[0]
        dmd5, duzun = f.read(16), struct.unpack('<Q', f.read(8))[0]
        iv = f.read(16)
        dolsun = duzun + (16 - duzun % 16) if duzun % 16 else duzun
        sifreli = f.read(dolsun)
    duz = AES.new(KEY, AES.MODE_CFB, iv=iv, segment_size=128).decrypt(sifreli)[:duzun]
    if hashlib.md5(duz).digest() != dmd5:
        raise RuntimeError('PCK anahtari uyusmadi (dizin MD5 tutmadi).')
    return baslik, dosya_taban, dizin_ofset, adet, duz


def main():
    try:
        from Crypto.Cipher import AES
    except ImportError:
        o('HATA: pycryptodome kurulu degil.')
        o('Su komutu calistirin: py -m pip install pycryptodome')
        input('Cikmak icin Enter...')
        return 1
    for yol in (GDC_KIT, TR_KIT):
        if not os.path.isfile(yol):
            o(f'HATA: yama dosyasi eksik: {yol}')
            input('Cikmak icin Enter...')
            return 1
    with open(GDC_KIT, 'rb') as f:
        yeni_gdc = f.read()
    with open(TR_KIT, 'rb') as f:
        yeni_tr = f.read()

    oyun = bul_oyun_klasoru()
    pck = os.path.join(oyun, 'eslabong.pck')
    yedek = os.path.join(oyun, YEDEK_ADI)
    if not os.path.isfile(yedek):
        o('Yedek aliniyor...')
        with open(pck, 'rb') as gir, open(yedek, 'wb') as cik:
            while True:
                parca = gir.read(64 * 1024 * 1024)
                if not parca:
                    break
                cik.write(parca)
        o('Yedek tamam: ' + YEDEK_ADI)
    else:
        o('Yedek zaten var, atlaniyor.')

    o('PCK dizini cozuluyor...')
    baslik, dosya_taban, dizin_ofset, adet, duz = dizin_coz(pck)

    girdiler = []
    konum = 0
    for _ in range(adet):
        sl = struct.unpack('<I', duz[konum:konum + 4])[0]
        yol_b = duz[konum + 4:konum + 4 + sl]
        taban = konum + 4 + sl
        ofs, boy = struct.unpack('<2Q', duz[taban:taban + 16])
        md5 = duz[taban + 16:taban + 32]
        bayrak = struct.unpack('<I', duz[taban + 32:taban + 36])[0]
        girdiler.append([sl, yol_b, ofs, boy, md5, bayrak])
        konum = taban + 36

    if any(g[1].rstrip(b'\x00') == b'Localization/tr.json' for g in girdiler):
        o('Bu PCK zaten yamali gorunuyor. Yine de devam edilsin mi? (e/h)')
        if input().strip().lower() not in ('e', 'evet', 'y', 'yes'):
            return 0

    gdc_abs = dizin_ofset
    tr_abs = gdc_abs + len(yeni_gdc)
    yeni_dizin_ofset = tr_abs + len(yeni_tr)

    bulundu = 0
    for g in girdiler:
        if g[1].rstrip(b'\x00') == b'Scripts/Autoloads/Localization.gdc':
            g[2], g[3], g[4] = gdc_abs - dosya_taban, len(yeni_gdc), hashlib.md5(yeni_gdc).digest()
            bulundu += 1
    if bulundu != 1:
        o('HATA: Localization.gdc girdisi PCK icinde bulunamadi.')
        input('Cikmak icin Enter...')
        return 1
    tr_yol = b'Localization/tr.json'
    girdiler.append([len(tr_yol), tr_yol, tr_abs - dosya_taban,
                     len(yeni_tr), hashlib.md5(yeni_tr).digest(), 0])

    ham = bytearray()
    for sl, yol_b, ofs, boy, md5, bayrak in girdiler:
        ham += struct.pack('<I', sl) + yol_b + struct.pack('<2Q', ofs, boy) + md5 + struct.pack('<I', bayrak)
    yeni_dizin = bytes(ham)

    o('Yama yaziliyor (bu biraz surebilir)...')
    yeni_iv = os.urandom(16)
    dolsun = len(yeni_dizin) + (16 - len(yeni_dizin) % 16) if len(yeni_dizin) % 16 else len(yeni_dizin)
    sifreli = AES.new(KEY, AES.MODE_CFB, iv=yeni_iv, segment_size=128).encrypt(
        yeni_dizin + b'\x00' * (dolsun - len(yeni_dizin)))
    gecici = pck + '.YENI'
    with open(pck, 'rb') as gir, open(gecici, 'wb') as cik:
        gir.seek(0)
        cik.write(baslik[:32] + struct.pack('<Q', yeni_dizin_ofset))
        cik.write(gir.read(dosya_taban - 40))
        kalan = dizin_ofset - dosya_taban
        while kalan > 0:
            parca = gir.read(min(64 * 1024 * 1024, kalan))
            if not parca:
                raise RuntimeError('Beklenmedik dosya sonu.')
            cik.write(parca)
            kalan -= len(parca)
        cik.write(yeni_gdc)
        cik.write(yeni_tr)
        cik.write(struct.pack('<I', adet + 1))
        cik.write(hashlib.md5(yeni_dizin).digest())
        cik.write(struct.pack('<Q', len(yeni_dizin)))
        cik.write(yeni_iv)
        cik.write(sifreli)
    os.replace(gecici, pck)

    o('Dogrulaniyor...')
    _, _, _, adet2, duz2 = dizin_coz(pck)
    assert adet2 == adet + 1 and b'Localization/tr.json' in duz2
    o(f'TAMAM! {adet2} dosya, Turkce eklendi.')
    o('Oyunu acin: Ayarlar -> Dil -> Turkce')
    input('Cikmak icin Enter...')
    return 0


if __name__ == '__main__':
    sys.exit(main())
