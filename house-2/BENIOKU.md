# House 2 — Türkçe Yama

Çevirmen: **mertpivvo**

---

## Kurulum

Yama zaten kurulu. Tek yapman gereken:

1. Oyunu aç.
2. Menüden **Options (Ayarlar)** bölümüne gir.
3. Dil seçeneğini bul. İki seçenek göreceksin: **English** ve **Chinese (Simplified)**.
4. **Chinese (Simplified)** yazanı seç.

Oyun Türkçe olacak.

> **Neden "Chinese (Simplified)"?**
> Oyunun dil menüsü oyunun kendi koduna sabit yazılmış; sadece İngilizce ve Çince
> seçeneği var. Menüye yeni dil eklemek için oyunun program dosyasını değiştirmek
> gerekiyor, bu da oyunu bozma riski taşıyor. Onun yerine Çince yuvası Türkçe'ye
> bağlandı: etikette "Chinese (Simplified)" yazıyor ama seçtiğinde oyun Türkçe açılıyor.
> Çince artık çalışmaz, İngilizce normal çalışır.

---

## Türkçe karakterler hakkında (önemli)

Oyunun fontu **özel bitmap font** — her harf tek tek çizilmiş bir resim atlasında.
Bu fontta **ş ğ ı İ ç ö ü** harfleri **yok**. Bu yüzden çeviride bu harflerin
yerine ASCII karşılıkları kullanıldı:

| Yerine | Kullanılan |
|---|---|
| ş / Ş | s / S |
| ğ / Ğ | g / G |
| ı      | i |
| İ      | I |
| ç / Ç | c / C |
| ö / Ö | o / O |
| ü / Ü | u / U |

Yani "şu an" yerine **"su an"**, "fırtına" yerine **"firtina"**, "yağmur" yerine
**"yagmur"** yazıyor. Okunur ve anlaşılır, sadece bu harfler aksansız.

Bunun sebebi: bu harfleri eklemek için oyunun font dosyalarını sıfırdan yeniden
üretmek gerekiyor. Oyun Stencyl ile yapılmış ve font dosyaları Stencyl'in kapalı
binary formatında — orijinal proje dosyası olmadan güvenli şekilde değiştirilemiyor.

---

## Neler çevrildi

- Tüm diyaloglar, etkileşim metinleri ve eşya isimleri
- Ana menü, ayarlar menüsü, kayıt menüsü
- Başarımlar (achievements)
- Jurnal / not metinleri

Karakter isimleri, stüdyo isimleri ve marka adları (Pizza, Tabby, DVD, XP gibi)
orijinal hâliyle bırakıldı.

---

## Orijinale dönmek istersen

Oyun klasöründe `_orijinal` adında bir yedek klasör var. İçindekiler:

| Dosya | Açıklama |
|---|---|
| `01-texts.csv.original` | Oyunun orijinal metin dosyası (İngilizce + diğer diller) |
| `langs.csv.original` | Oyunun orijinal dil listesi |
| `House 2.exe` | Oyunun orijinal program dosyası |
| `font-159.png` / `font-159.fnt.mbs` | Orijinal font yedekleri |
| `01-texts.csv.bozuk_20260901` | Önceki bozuk deneme (gerekmez) |

Geri dönmek için `_orijinal/01-texts.csv.original` ve `_orijinal/langs.csv.original`
dosyalarını `assets/data/` içine kopyalayıp adlarını `01-texts.csv` ve `langs.csv`
yapman yeterli.

---

## Bilgi

- Oyun: House 2 (Stencyl ile yapılmış)
- Metin dosyası: `assets/data/01-texts.csv` — İngilizce kolon anahtar olarak kullanılır
- Dil listesi: `assets/data/langs.csv`
- Oyunun kayıt dosyası: `C:\Users\<kullanıcı>\AppData\Roaming\Stencyl\House 2\mySave.sol`
