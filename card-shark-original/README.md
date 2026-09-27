# Card Shark — Türkçe Yama (Steam / Orijinal Sürüm) v1.1

Oyun: [Card Shark](https://store.steampowered.com/app/1371720/Card_Shark/) (Nerial / Devolver Digital)
Sürüm: 1.2 · Unity 2019.4.35f1 · Windows
Çeviri: **mertpivvo**

## Kapsam

| Öğe | Adet |
|---|---|
| Diyalog dosyası (`.yarn`) | 64 |
| Çevrilen diyalog satırı | 7.121 |
| Arayüz/metin tablosu | 14 |
| Çevrilen tablo satırı | 546 |
| Credits (kredi) rol satırı | 113 |
| **Toplam çevrilen satır** | **7.780** |
| Font atlasına eklenen Türkçe glif | 6 glif × 6 font atlasu |

Oyunun bütün ekran metinleri iki yerden geliyor: Yarn Spinner diyalog dosyaları ve
`KEY = value` biçimindeki arayüz tabloları. İkisi de `Card_shark_Data\data.unity3d`
UnityFS paketinin içinde TextAsset olarak duruyor. Yama bu 79 dosyayı (64 + 15) yerinde
Türkçe metinle değiştirir; oyun dilini İngilizce bırakmak yeterlidir.

## Türkçe karakter düzeltmesi (v1.1)

v1.0 sürümünde `ı` ve diğer Türkçe harfler ekranda görünmüyordu.

**Kök neden:** Oyun TextMeshPro kullanıyor ve yazı tipi atlasları (SDF) yalnızca oyunun
11 resmî diline göre pişirilmiş. `ı İ ğ Ğ ş Ş` bu atlasların hiçbirinde yoktu; TMP
statik atlasta karakteri bulamayınca hiçbir şey çizmiyordu. `ç Ç ö Ö ü Ü` mevcuttu
(Fransıca/Almanca için gerekli), bu yüzden hata yalnızca Türkçeye özgü harflerde görünüyordu.

**Çözüm:** Oyunun gerçek yazı tipi ailesi (IM FELL English, SIL OFL lisanslı) ile bu
6 harf SDF olarak üretildi ve 6 yazı tipi atlasuna eklendi:

- `mainFont`, `italicFont`, `outlinedFont`, `journalFont`, `mainFont Worldspace` (IM FELL English)
- `LiberationSans SDF` (paketin içindeki Liberation Sans TTF'si kullanıldı)

Atlaslar 1024×1024 → 1024×2048 büyütüldü; **mevcut gliflerin pikselleri birebir
korundu** (eski alan doğrulandı), yalnızca boş alana 6 yeni glif çizildi. Her atlas için
`TMP_Glyph` + `TMP_Character` kaydı, `m_AtlasHeight` ve materyal `_TextureHeight`
değerleri güncellendi. SDF ölçeği oyunun kendi `_GradientScale` değerinden alındı
(6.0 / 10.0), glif ölçüleri font birimlerinden (`pointSize / 2048`) hesaplandı ve
atlastaki mevcut gliflerin metrikleriyle karşılaştırılarak doğrulandı.

## Yöntem ve doğrulama

- Paket `data.unity3d` açılıp yalnızca hedef TextAsset'ler değiştirilerek yeniden yazıldı
  (UnityPy, orijinal sıkıştırma bayrakları korunarak: LZ4HC + block info 0x3).
- **No-op round-trip testi:** hiçbir değişiklik yapılmadan açılıp yeniden yazılan paket
  245.689 objenin tamamında birebir aynı çıktı; obje sayısı, path ID'leri ve ham veri
  değişmedi.
- **Son doğrulama:** orijinal ile yamalı paket karşılaştırıldı — 245.689 objenin key
  multiset'i birebir aynı (0 ekleme, 0 silme). Değişen obje sayısı tam olarak 97:
  79 TextAsset + 6 TMP_FontAsset + 6 atlas Texture2D + 6 font Material. Sahne, ses,
  sprite, script ve diğer `.resS` blokları bit düzeyinde aynı kaldı.
- **Türkçe karakter kontrolü:** `ç Ç ğ Ğ ı İ ö Ö ş Ş ü Ü` test dizisi hedef dosya
  formatına yazılıp tekrar okundu; codepoint'ler birebir korundu, `?`/tofu/mojibake yok.
- **Font kontrolü:** 6 atlasın eski pikselleri birebir aynı, yeni glif rect'lerinde
  veri mevcut; yazı tipleriyle örnek metinler (`Ayarlar · Yeni Oyun · Çıkış`,
  `ışık IŞIK ğüşçı ĞÜŞÇİ`) SDF eşleştiricisiyle görsel olarak doğrulandı.
- Oyun çalıştırılarak görsel test yapılamadı (test makinesinde oyun kurulu değil);
  doğrulama paket yapısı, kodepoint, font atlası ve glif metrikleri üzerinden yapıldı.

## Kurulum

`BENIOKU.txt` dosyasındaki adımlar: paketteki `Card_shark_Data\data.unity3d` dosyasını
oyunun `Card_shark_Data` klasörüne kopyalamak yeterli. Ek mod/kurulum gerekmez.

## İndirme

- `orjinal-card-shark.zip` — 913.823.224 bayt
  [orjinal-card-shark.zip indir](https://github.com/metopiw/TURKCE-YAMA/releases/download/orjinal-card-shark-v1.0/orjinal-card-shark.zip)
- [Release sayfası](https://github.com/metopiw/TURKCE-YAMA/releases/tag/orjinal-card-shark-v1.0)
- SHA-256: `71958b37885d8a71cd199ecb81d7d45a33b76c3db1123ad13119125e7067d2f8`

ZIP, GitHub deposunun 100 MB dosya sınırına takıldığı için release dosyası olarak
yüklenmiştir; içeriği `BENIOKU.txt` + `Card_shark_Data/data.unity3d` şeklindedir.

## Not

Korsan sürüm için yapılan önceki Türkçe yama **ayrı bir pakettir** ve bu yamanın yerine
geçmez; her ikisi de farklı `data.unity3d` sürümlerinden üretilmiştir.

## Değişiklikler

- **v1.1** — Font atlaslarına `ı İ ğ Ğ ş Ş` glifleri eklendi (Türkçe karakterler artık
  görünüyor). 6 yazı tipi atlasu 1024×1024 → 1024×2048; 6 TMP_FontAsset, 6 atlas
  Texture2D ve 6 Material güncellendi.
- **v1.0** — 7.780 metin çevrisi (64 diyalog + 15 tablo), Credits imzası.
