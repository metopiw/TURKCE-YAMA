# House 2 — Türkçe Yama

Oyunun **tam çevirisi**: tüm diyaloglar, etkileşim metinleri, eşya isimleri, ana menü /
ayarlar menüsü, başarımlar ve jurnal notları Türkçe.

- Çevirmen: **mertpivvo**
- Sürüm: 1.0 (01.09.2026)
- Durum: ✅ Tam — 2.493 metin, 1 tablo (`01-texts.csv`)
- Tür: Atmosferik korku / nokta-tıkla macera
- Steam: https://store.steampowered.com/app/2586440/
- Motor: Stencyl (Haxe / OpenFL)

## Kurulum

1. Bu klasördeki `assets` ve `manifest` klasörlerini indirin.
2. Oyunun kurulu olduğu klasöre (içinde `House 2.exe` olan klasör) atın.
   Var olan dosyaları **değiştirin** deyin.
   ```
   House 2/
     assets/data/01-texts.csv
     assets/data/langs.csv
     manifest/default.json
   ```
3. Oyunu açın → **Options (Ayarlar)** → dil kısmından
   **"Chinese (Simplified)"** yazan seçeneği seçin.
4. Oyun Türkçe olacak. Ana menüde `yeni oyun - mertpivvo` imzasını göreceksiniz.

> **Neden "Chinese (Simplified)" seçiyoruz?**
> Oyunun dil menüsü oyunun kendi koduna sabit yazılmış; sadece İngilizce ve Çince
> seçeneği var. Menüye yeni dil eklemek için oyunun program dosyasını değiştirmek
> gerekiyor, bu da oyunu çalıştıramama riski taşıyor. Bu yüzden Çince yuvası
> Türkçe'ye bağlandı: etikette Çince yazıyor ama seçtiğinizde oyun Türkçe açılıyor.
> **Çince artık çalışmaz, İngilizce normal çalışır.**

## Türkçe karakterler

Oyunun fontu özel bitmap font ve içinde **ş ğ ı İ ç ö ü** harfleri yok. Bu
harflerin yerine ASCII karşılıkları kullanıldı (ş→s, ğ→g, ı→i, İ→I, ç→c, ö→o, ü→u).
Yani "şu an" yerine **"su an"**, "fırtına" yerine **"firtina"** yazıyor — okunur ve
anlaşılır, sadece bu harfler aksansız.

Bunun sebebi: bu harfleri eklemek için oyunun font dosyalarının sıfırdan yeniden
üretilmesi gerekiyor. Oyun Stencyl ile yapılmış ve font dosyaları Stencyl'in kapalı
binary formatında (`.fnt.mbs`) — orijinal proje dosyası olmadan güvenli şekilde
değiştirilemiyor.

## Kaldırma

Oyun klasöründe yamanın yanına koyduğunuz orijinal dosyaların yedeğini geri
kopyalayın. Yedek almadıysanız Steam'de oyunu **Dosya bütünlüğünü doğrula** ile
onarabilirsiniz.

## Teknik Detaylar

- `assets/data/01-texts.csv` — 2.493 satır. `Dialogue` (İngilizce) kolonu
  **anahtar** olarak kullanılır; bu kolona dokunulmadı, Türkçe `tr` ve `zhs`
  kolonlarına yazıldı.
- `assets/data/langs.csv` — Çince satırının `Internal` değeri `zhs` → `tr`
  yapıldı. `FontType` / `IdSteam` / `IdOther` orijinal bırakıldı (aksi halde dil
  geçişi bozuluyor).
- `manifest/default.json` — dosya boyutları yeni CSV'lere göre güncellendi
  (`assets%2Fdata%2F01-texts.csvR2i<boyut>` formatında).
- Font dosyalarına **hiç dokunulmadı**.
- Dosyalar: UTF-8 (BOM'suz), CRLF satır sonu.

## Sorumluluk Reddi

Bu yama yalnızca çeviri metinlerini içerir. Oyunu oynamak için orijinal bir kopyaya
sahip olmalısınız. Ticari amaçla kullanılamaz.
