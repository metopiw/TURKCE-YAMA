# Card Shark — Türkçe Yama (Steam / Orijinal Sürüm)

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

Oyunun bütün ekran metinleri iki yerden geliyor: Yarn Spinner diyalog dosyaları ve
`KEY = value` biçimindeki arayüz tabloları. İkisi de `Card_shark_Data\data.unity3d`
UnityFS paketinin içinde TextAsset olarak duruyor. Yama bu 79 dosyayı (64 + 15) yerinde
Türkçe metinle değiştirir; oyun dilini İngilizce bırakmak yeterlidir.

## Yöntem

- Paket `data.unity3d` açılıp yalnızca hedef TextAsset'ler değiştirilerek yeniden yazıldı
  (UnityPy, orijinal sıkıştırma bayrakları korunarak: LZ4HC + block info 0x3).
- **No-op round-trip testi:** hiçbir değişiklik yapılmadan açılıp yeniden yazılan paket
  245.689 objenin tamamında birebir aynı çıktı; obje sayısı, path ID'leri ve ham veri
  değişmedi.
- **Son doğrulama:** orijinal ile yamalı paket karşılaştırıldı — 245.689 objenin key
  multiset'i birebir aynı, değişen obje sayısı tam olarak 79 (hepsi TextAsset), TextAsset
  dışında hiçbir obje değişmemiş (sahne, ses, sprite, script, font ve `.resS` blokları
  bit düzeyinde aynı).
- **Türkçe karakter kontrolü:** `ç Ç ğ Ğ ı İ ö Ö ş Ş ü Ü` test dizisi hedef dosya
  formatına yazılıp tekrar okundu; codepoint'ler birebir korundu, `?`/tofu/mojibake yok.
  Türkçe karakterlerin toplamı: ı 11.887 · ü 4.250 · ş 3.553 · ğ 2.972 · ç 2.501 · ö 1.707.
- **Font:** oyunun kullandığı fontlar (Roboto Regular/Bold, LiberationSans) `ç Ğ ı İ ö ş ü`
  gliflerinin tamamına sahip; font dosyalarına dokunulmadı. Kart yüzlerindeki piksel fontu
  (Perfect DOS VGA 437) yalnızca rakam ve suit sembolleri kullandığı için Türkçe metin
  almıyor.
- Oyun çalıştırılarak görsel test yapılamadı (test makinesinde oyun kurulu değil);
  doğrulama paket yapısı, kodepoint ve font/glif tabloları üzerinden yapıldı.

## Kurulum

`BENIOKU.txt` dosyasındaki adımlar: paketteki `Card_shark_Data\data.unity3d` dosyasını
oyunun `Card_shark_Data` klasörüne kopyalamak yeterli. Ek mod/kurulum gerekmez.

## İndirme

- `orjinal-card-shark.zip` — 911.436.717 bayt
  [orjinal-card-shark.zip indir](https://github.com/metopiw/TURKCE-YAMA/releases/download/orjinal-card-shark-v1.0/orjinal-card-shark.zip)
- [Release sayfası](https://github.com/metopiw/TURKCE-YAMA/releases/tag/orjinal-card-shark-v1.0)
- SHA-256: `670de61480296fd2810789ec75ab04bd01c128aa1ecef3f53956f3f3c2927b10`

ZIP, GitHub deposunun 100 MB dosya sınırına takıldığı için release dosyası olarak
yüklenmiştir; içeriği `BENIOKU.txt` + `Card_shark_Data/data.unity3d` şeklindedir.

## Not

Korsan sürüm için yapılan önceki Türkçe yama **ayrı bir pakettir** ve bu yamanın yerine
geçmez; her ikisi de farklı `data.unity3d` sürümlerinden üretilmiştir.
