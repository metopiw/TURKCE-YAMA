#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Chaos Mod V - UTF-8 GERÇEK TÜRKÇE yama (kutucuksuz)
# Kanıt: oyunun font_lib_efigs_pc.gfx kütüphanesi tüm Türkçe glifleri içeriyor
#        (Chalet London/Comprime, Sign Painter, Pricedown - cmap analizi 24.08.2026).
# Oyun PC'de UTF-8 bekler; Windows-1254 KULLANILMAZ (kutucuk çıkarır).
# UTF-8'de Türkçe harfler 2 bayt tuttuğu için avail kontrolü bayt bazlı yapılır;
# sığmazsa ASCII'ye, o da sığmazsa karakter sınırında güvenli kısaltmaya düşer.
import re, os, shutil, hashlib, json

SRC = r"D:\GTAV\ChaosMod.asi.EN_YEDEK"
DST_UTF8 = r"D:\GTA_MOD\05_Chaos_Mod_V_350_Efekt\ChaosMod_UTF8_TURKCE.asi"
DST_ACTIVE = r"D:\GTAV\ChaosMod.asi"
REPORT = r"D:\GTA_MOD\05_Chaos_Mod_V_350_Efekt\UTF8_yama_raporu.txt"

TRANSLATIONS = {
    "A Dark World": "Karanlık Evren",
    "Add Max Upgrades To Every Vehicle": "Tüm Araçlara Tam Modifiye",
    "Aimbot Peds": "Hileci Pedler",
    "Airstrike Inbound": "Hava Saldırısı Var",
    "Alarmy Vehicles": "Alarm Araçlar",
    "All Nearby Peds Are Fleeing": "Pedler Kaçışıyor",
    "All Peds Are Cops": "Herkes Polis",
    "All Peds Attack Player": "Herkes Sana Saldırır",
    "All Vehicles Are Invulnerable": "Araçlar Hasarsız",
    "All Vehicles Honk": "Araçlar Korna Çalar",
    "Arced Screen": "Kavisli Ekran",
    "Black Hole": "Kara Delik",
    "Blimp Strats": "Zeplin Taktiği",
    "Blind Peds": "Kör Pedler",
    "Blue Traffic": "Mavi Trafik",
    "Bouncy Radar": "Zıplayan Radar",
    "Bouncy Vehicles": "Zıplayan Araç",
    "Break Doors Of Every Vehicle": "Tüm Kapılar Kırıldı",
    "Bubble Vision": "Balon Görüş",
    "Bus Bois": "Otobüs Çetesi",
    "Can't Tie My Shoes": "Ayakkabım Bağlanmaz",
    "Catto Guns": "Kedi Silahları",
    "Chrome Traffic": "Krom Trafik",
    "Cinematic Vehicle Cam": "Sinematik Araç Kamera",
    "Clone Player": "Oyuncu Klonu",
    "Cocktail Shaker": "Çalkalayıcı",
    "Colorful World": "Renkli Dünya",
    "Combo Time": "Kombo Zamanı",
    "Console Experience": "Konsol Deneyimi",
    "Cruise Control": "Hız Tutucu",
    "Crumbling Vehicles": "Araçlar Ufalıyor",
    "DVD Screensaver": "DVD Koruyucu",
    "Dead Eye": "Ölümcül Göz",
    "Deadly Aim": "Ölüm Nişanı",
    "Deep Fried": "Kızarmış",
    "Delayed Camera": "Geciken Kamera",
    "Detach Random Wheel": "Rastgele Teker Koptu",
    "Dimension Warp": "Boyut Kayması",
    "Disable Random Direction": "Rastgele Yön Kapalı",
    "Disassemble Current Vehicle": "Araç Parçalandı",
    "Disco Weather": "Disko Havası",
    "Eternal Screams": "Çığlıklar",
    "Everyone Is A Ghost": "Herkes Hayalet",
    "Everyone Is Bloody": "Herkes Kanlı",
    "Explode All Nearby Vehicles": "Yakın Araçlar Patladı",
    "Explosive Combat": "Patlayıcı Dövüş",
    "Explosive Peds": "Patlayıcı Ped",
    "Extra Sunny Weather": "Parlak Güneşli Hava",
    "Extreme Fog": "Yoğun Sis",
    "Fake Death": "Sahte Ölüm",
    "Fake U-Turn": "Sahte Dönüş",
    "Fake Wanted Level": "Sahte Aranma",
    "Flip All Vehicles": "Araçlar Takla Attı",
    "Flipped HUD": "Ters HUD",
    "Flying Cars": "Uçan Arabalar",
    "Foggy Weather": "Sisli Hava",
    "Folded Screen": "Katlanır Ekran",
    "Fourth Dimension": "Dördüncü Boyut",
    "Friendly Fire": "Dost Ateşi",
    "Friendly Neighborhood": "Dost Mahalle",
    "Full Acceleration": "Tam Gaz",
    "Get Roasted": "Kavruldun",
    "Get Towed": "Çekiliyorsun",
    "Ghost Town": "Hayalet Şehir",
    "Give All Weapons": "Tüm Silahlar Verildi",
    "Give Everyone A Battle Axe": "Herkese Balta Verildi",
    "Give Everyone A Minigun": "Herkese Minigun Verildi",
    "Give Everyone A Railgun": "Herkese Railgun Verildi",
    "Give Everyone A Random Prop": "Herkese Rastgele Eşya",
    "Give Everyone A Random Weapon": "Herkese Rastgele Silah",
    "Give Everyone A Stun Gun": "Herkese Elektro Silah",
    "Give Everyone An RPG": "Herkese RPG Verildi",
    "Give Everyone An Up-N-Atomizer": "Herkese Atomizer Verildi",
    "Goddamn Auto-Rotate": "Lanet Oto Dönüş",
    "Gravity Field": "Çekim Alanı",
    "Gravity Guns": "Çekim Silahı",
    "Gravity Sphere": "Çekim Küresi",
    "Green Traffic": "Yeşil Trafik",
    "Heat Vision": "Termal Görüş",
    "Heavy Recoil": "Ağır Tepme",
    "Help My W Key Is Stuck": "W Tuşum Takılı",
    "High Pitch": "İnce Ses",
    "Honk Boosting": "Kornayla Gaz",
    "Hot Cougars In Your Area": "Yakında Sıcak Kadınlar",
    "Hot Traffic": "Hızlı Trafik",
    "Hue Shift": "Renk Kayması",
    "I Feel Sick": "Hastayım",
    "I Need Glasses": "Gözlük Lazım",
    "Ignite Player": "Oyuncu Yanıyor",
    "In The Hood": "Mahalledesin",
    "Innocence Is Illegal": "Masumiyet Yasadışı",
    "Inverted Colors": "Renkler Ters",
    "Jesus Take The Wheel": "Direksiyonda İsa",
    "Jumpy Props": "Zıplayan Eşya",
    "Jumpy Vehicles": "Zıplayan Araç",
    "Killer Clowns": "Katil Soytarı",
    "LS Noire": "LS Noire",
    "Launch All Nearby Peds Up": "Pedler Havaya Fırladı",
    "Launch All Vehicles Up": "Araçlar Fırlatıldı",
    "Launch Player Up": "Oyuncu Fırlatıldı",
    "Lock All Vehicles": "Araçlar Kilitlendi",
    "Lock Camera": "Kamera Kilitli",
    "Lock Player Inside Vehicle": "Araçta Mahsur Kaldın",
    "Loose Triggers": "Hassas Tetikler",
    "Low Pitch": "Kalın Ses",
    "Low Render Distance": "Kısa Çizim Mesafesi",
    "Majority Voting": "Halk Oylaması",
    "Make Random Stunt Jump": "Rastgele Rampa Atlama",
    "Midas Touch": "Midas Dokunuşu",
    "Minimal Damage": "Az Hasar",
    "Mirrored Screen": "Aynalı Ekran",
    "Money Rain": "Para Yağmuru",
    "Mower Mates": "Çim Biçiciler",
    "Muffled Audio": "Boğuk Ses",
    "Neutral Weather": "Normal Hava",
    "News Team": "Haber Ekibi",
    "Night Vision": "Gece Görüşü",
    "No Chaos": "Kaos Yok",
    "No Phone": "Telefon Yok",
    "No Ragdoll": "Ragdoll Yok",
    "No Sky": "Boşluk",
    "No Special Ability": "Özel Yetenek Yok",
    "Now This Is Some Tire Poppin'": "Lastikler Patlıyor",
    "Obliterate All Nearby Peds": "Yakın Pedler Yok Oldu",
    "Oil Trails": "Yağ İzleri",
    "On-Demand TV": "İstek TV'si",
    "One Bullet Mags": "Tek Mermi",
    "One Hit KO": "Tekte Nakavt",
    "Optional has no value": "Opsiyonel değer yok",
    "Pay Respects": "Saygı Duruşu",
    "Peds Are Brainless": "Pedler Beyinsiz",
    "Peds Drive Backwards": "Pedler Geri Gidiyor",
    "Peds Drive-By Player": "Pedler Ateş Ediyor",
    "Play Arena Wars Theme": "Arena Savaşı Müziği",
    "Player Ragdolls When Shot": "Vurunca Yere Düşersin",
    "Pop Tires Of Every Vehicle": "Tüm Lastikler Patladı",
    "Portal Guns": "Portal Silahı",
    "Prop Cars": "Eşya Arabalar",
    "Quick Sprunk Stop": "Hızlı Sprunk Molası",
    "RGB Land": "RGB Dünyası",
    "Ragdoll Everyone": "Herkes Yere Düştü",
    "Rainbow Traffic": "Renkli Trafik",
    "Rainbow Weapons": "Renkli Silahlar",
    "Ramp Jam": "Rampa Kazası",
    "Random Gravity": "Rastgele Çekim",
    "Random Tire Popping": "Rastgele Lastik Patlar",
    "Randomize Player Clothes": "Kıyafetler Karıştı",
    "Rapid Fire": "Hızlı Ateş",
    "Real First Person": "Gerçek Birinci Şahıs",
    "Realistic Hacking": "Gerçekçi Hack",
    "Received hello from voting pipe": "Oylama bağlantısı kuruldu",
    "Red Traffic": "Kızıl Trafik",
    "Remove Current Vehicle": "Mevcut Araç Silindi",
    "Remove Waypoint": "İşareti Sil",
    "Remove Weapons From Everyone": "Herkesin Silahı Alındı",
    "Repair All Vehicles": "Araçlar Tamir Edildi",
    "Replace Current Vehicle": "Araç Değiştirildi",
    "Resurrection Day": "Diriliş Günü",
    "Revive Dead Peds": "Ölü Pedler Canlandı",
    "Rocket Man": "Roket Adam",
    "Scooter Brothers": "Scooter Kardeşler",
    "Screen Freakout": "Ekran Delirdi",
    "Sensitive Touch": "Hassas Dokunuş",
    "Set Everyone Into Random Vehicles": "Herkes Rastgele Araçta",
    "Set Player Into Closest Vehicle": "En Yakın Araca Bindin",
    "Set Player Into Random Vehicle": "Rastgele Araca Bindin",
    "Set Player Into Random Vehicle Seat": "Rastgele Koltuğa Geçtin",
    "Set Random Waypoint": "Rastgele İşaret Kondu",
    "Set Time To Daytime": "Saat Gündüze Alındı",
    "Set Time To Evening": "Saat Akşama Ayarlandı",
    "Set Time To Morning": "Saat Sabaha Ayarlandı",
    "Set Time To Night": "Saat Geceye Ayarlandı",
    "Set Time To System Time": "Saat Sistemden Alındı",
    "Shattered Screen": "Paramparça Ekran",
    "Sideways Gravity": "Yanal Yerçekimi",
    "Simeon Says": "Simeon Diyor Ki",
    "Slidy Peds": "Kaygan Pedler",
    "Slippery Vehicles": "Kaygan Araçlar",
    "Smoke Trails": "Duman İzleri",
    "Snowy Weather": "Karlı Hava",
    "Solid Props": "Sağlam Eşya",
    "Spammy Vehicle Doors": "Kapılar Hep Açık",
    "Spawn Adder": "Adder Geldi",
    "Spawn Angry Alien": "Kızgın Uzaylı Geldi",
    "Spawn Angry Chimp": "Kızgın Şempanze",
    "Spawn BMX": "BMX Geldi",
    "Spawn Bale Trailer": "Bale Römorku Geldi",
    "Spawn Balla Squad": "Balla Çetesi Geldi",
    "Spawn Blimp": "Zeplin Geldi",
    "Spawn Blue Sultan": "Mavi Sultan Geldi",
    "Spawn Bus": "Otobüs Geldi",
    "Spawn Buzzard": "Buzzard Geldi",
    "Spawn Cargo Plane": "Kargo Uçağı Geldi",
    "Spawn Companion Brad": "Refakatçi Brad Geldi",
    "Spawn Companion Chimp": "Refakatçi Şempanze",
    "Spawn Companion Doggo": "Refakatçi Köpek Geldi",
    "Spawn Dance Troupe": "Dans Ekibi Geldi",
    "Spawn Deadly Agent": "Ölümcül Ajan Geldi",
    "Spawn Dump": "Dump Geldi",
    "Spawn Faggio": "Faggio Geldi",
    "Spawn Fan Cats": "Fan Kedileri",
    "Spawn Ferris Wheel": "Dönme Dolap Geldi",
    "Spawn Griefer Jesus": "Bela İsa Geldi",
    "Spawn Impotent Rage": "Impotent Rage Geldi",
    "Spawn Jealous Jimmy": "Kıskanç Jimmy Geldi",
    "Spawn Juggernaut": "Juggernaut Geldi",
    "Spawn Monster": "Monster Geldi",
    "Spawn Orange Ball": "Turuncu Top Geldi",
    "Spawn Quarreling Couple": "Kavgacı Çift Geldi",
    "Spawn Random Companion": "Rastgele Yoldaş Geldi",
    "Spawn Random Enemy": "Rastgele Düşman Geldi",
    "Spawn Random Vehicle": "Rastgele Araç Geldi",
    "Spawn Rhino": "Rhino Geldi",
    "Spawn Space Ranger": "Uzay Korucusu Geldi",
    "Spawn Tug": "Tug Geldi",
    "Spawn UFO": "UFO Geldi",
    "Speed Boost": "Hız Takviyesi",
    "Spinning Camera": "Dönen Kamera",
    "Spinning Peds": "Dönen Pedler",
    "Split Screen Co-op": "Bölünmüş Ekran",
    "Stop and Stare": "Dur ve İzle",
    "Stormy Weather": "Fırtına",
    "Super Stunt": "Süper Gösteri",
    "Swapped Colors": "Renk Değişimi",
    "TN Panel": "TN Panel",
    "Teleport Everything To Player": "Her Şey Sana Işınlandı",
    "Teleport Player A Few Meters": "Birkaç Metre Işınlandı",
    "Teleport To Fort Zancudo": "Fort Zancudo'ya Işınlandı",
    "Teleport To Heaven": "Cennete Işınlandı",
    "Teleport To LS Airport": "Havaalanına Işınlan",
    "Teleport To Mount Chiliad": "Chiliad Dağına Işınlandı",
    "Teleport To Random Location": "Rastgele Konuma Işınlandı",
    "Teleport To Random Mission": "Rastgele Göreve Işınlandı",
    "Teleport To Top Of Maze Bank Tower": "Maze Bank Tepesine Işınlandı",
    "Teleport To Waypoint": "İşarete Işınlandı",
    "Teleporter Malfunction": "Işınlayıcı Bozuldu",
    "Traffic Magnet": "Araç Çekici",
    "Unfriendly Neighborhood": "Düşman Mahalle",
    "Use The Force": "Gücü Kullan",
    "Vehicle Rain": "Araç Yağmuru",
    "Vehicles Have No Gravity": "Araçlar Yerçekimsiz",
    "Vehicles Shoot Rockets": "Araçlar Roket Atıyor",
    "Virtual Reality": "Sanal Gerçek",
    "Walk On Water": "Suda Yürüme",
    "Warped Camera": "Bozuk Kamera",
    "Weird Pitch": "Garip Ses Tonu",
    "Whale Rain": "Balina Yağmuru",
    "Witness Protection": "Tanık Koruma",
    "You Are Famous": "Ünlü Oldun",
    "You're Toast": "Kızardın",
    "Zoom Zoom Cam": "Zum Zum Kamera",
    "I'm So Tired": "Çok Yorgunum",
    "Everyone Exits Their Vehicles": "Herkes Araçtan Çıkıyor",
    "Tanks A Lot": "Tank Yağmuru",
}

TR_TO_ASCII = str.maketrans({
    "ç": "c", "Ç": "C", "ğ": "g", "Ğ": "G", "ı": "i", "İ": "I",
    "ö": "o", "Ö": "O", "ş": "s", "Ş": "S", "ü": "u", "Ü": "U",
})


def utf8_fit(s, avail):
    """UTF-8'i karakter sinirinda guvenli kisaltarak avail'e sigdirir."""
    b = s.encode('utf-8')
    if len(b) <= avail:
        return b, False
    chars = list(s)
    while chars:
        chars.pop()
        b = ''.join(chars).encode('utf-8')
        if len(b) <= avail:
            return b, True
    return b'', True


def main():
    data = bytearray(open(SRC, "rb").read())
    pattern = re.compile(rb'[^\x00]{3,}\x00')
    matches = list(pattern.finditer(data))
    offset_to_str = {}
    for m in matches:
        raw = m.group()[:-1]
        try:
            s = raw.decode('ascii')
        except Exception:
            continue
        offset_to_str[m.start()] = s

    match_index = {m.start(): i for i, m in enumerate(matches)}

    stats = {"utf8": 0, "ascii": 0, "truncated": 0, "total": 0}
    log = []
    for off, orig in sorted(offset_to_str.items()):
        if orig not in TRANSLATIONS:
            continue
        tr = TRANSLATIONS[orig]
        idx = match_index[off]
        avail = (matches[idx + 1].start() - off - 1) if idx + 1 < len(matches) else 64
        stats["total"] += 1

        b_utf8 = tr.encode('utf-8')
        b_ascii = tr.translate(TR_TO_ASCII).encode('ascii')
        if len(b_utf8) <= avail:
            enc, mode = b_utf8, "utf8"
        elif len(b_ascii) <= avail:
            enc, mode = b_ascii, "ascii"
        else:
            enc, truncated = utf8_fit(tr, avail)
            mode = "truncated"
            if truncated:
                log.append(f"KISALTI (utf8, karakter siniri): {orig!r} avail={avail} -> {enc.decode('utf-8', 'replace')!r}")
        stats[mode] += 1
        if mode == "ascii":
            log.append(f"ASCIIye dustu (utf8 sigmadi): {orig!r} avail={avail} utf8len={len(b_utf8)} asciilen={len(b_ascii)} -> {b_ascii.decode()!r}")

        # alani temizle ve yaz (null + padding sifir)
        for i in range(avail + 1):
            data[off + i] = 0
        data[off:off + len(enc)] = enc

    open(DST_UTF8, "wb").write(data)

    # dogrulama: patchlenen stringler gecerli UTF-8 ve avail icinde olmali
    data2 = open(DST_UTF8, "rb").read()
    verify_ok, verify_bad = 0, []
    for off, orig in offset_to_str.items():
        if orig not in TRANSLATIONS:
            continue
        idx = match_index[off]
        avail = (matches[idx + 1].start() - off - 1) if idx + 1 < len(matches) else 64
        chunk = data2[off:off + avail]
        nul = chunk.find(0)
        raw = chunk[:nul if nul >= 0 else avail]
        try:
            s = raw.decode('utf-8', errors='strict')
            verify_ok += 1
        except UnicodeDecodeError as e:
            verify_bad.append((orig, raw, str(e)))
    # ayni alan icinde tekrar sayim (truncated da sayilir)
    verify_ok_total = verify_ok + stats["truncated"]

    rep = []
    rep.append("ChaosMod UTF-8 TURKCE YAMA RAPORU - 24.08.2026")
    rep.append(f"Kaynak : {SRC}")
    rep.append(f"Cikti  : {DST_UTF8}")
    rep.append(f"Aktif  : {DST_ACTIVE}")
    rep.append(f"Toplam efekt: {stats['total']}")
    rep.append(f"  - UTF-8 Turkce (tam): {stats['utf8']}")
    rep.append(f"  - ASCIIye dusen     : {stats['ascii']}")
    rep.append(f"  - Kisaltilan        : {stats['truncated']}")
    rep.append(f"Doğrulama: {verify_ok} string gecerli UTF-8, {len(verify_bad)} HATALI")
    rep.append("")
    rep.extend(log)
    if verify_bad:
        rep.append("!!! UTF-8 HATALARI:")
        for orig, raw, err in verify_bad:
            rep.append(f"  {orig!r}: {raw!r} ({err})")
    txt = "\n".join(rep)
    open(REPORT, "w", encoding="utf-8").write(txt)
    print(txt[:3000])
    print("...")
    print("hash:", hashlib.sha256(data2).hexdigest()[:16], "boyut:", len(data2))


if __name__ == "__main__":
    main()
