# Captain Tsubasa 2: World Fighters — Türkçe Yama

Oyunun **tam çevirisi**: tüm diyaloglar (ADV, 42.015 metin girdisi) + tüm arayüz/menüler (Game) Türkçe.

- Çevirmen: **mertpivvo**
- Sürüm: 1.0 (29.08.2026)
- Durum: ✅ Tam — diyaloglar, menüler, ayarlar, karakter/DLC metinleri

## Kurulum

1. `zzz_Turkce_P.pak` dosyasını indirin.
2. Oyunun kurulu olduğu klasörde şu yolu açın:
   ```
   CaptainTsubasa2WF\Content\Paks\
   ```
   (Varsayılan: `C:\Games\CAPTAIN TSUBASA 2 WORLD FIGHTERS\CaptainTsubasa2WF\Content\Paks\`)
3. `zzz_Turkce_P.pak` dosyasını bu klasöre **kopyalayın**. Orijinal oyun dosyalarına dokunmayın — yama ayrı bir pak olarak yüklenir.
4. Oyunu başlatın. Menüler ve diyaloglar Türkçe olacak.

## Kaldırma

`Paks` klasöründen `zzz_Turkce_P.pak` dosyasını silmeniz yeterli — oyun orijinal İngilizce haline döner.

## Teknik Detaylar (ilgilenenler için)

- Unreal Engine 5 Zen paketleri (`.ucas/.utoc`, AES şifreli) repak ile paketlenmiş `V11` mod pakıdır (`zzz_` öneki sayesinde en son yüklenir, `en` locres'lerinin üzerine yazar).
- Locres v3 formatı çözülerek yazıldı; Türkçe karakterler (ğ, ş, ı, İ, ç, ö, ü) UTF-16 FString olarak düzgün gömüldü.
- Kapsam: `ADV.locres` (hikaye diyalogları) + `Game.locres` (UI/menüler) + locmeta dosyaları.
- Video altyazıları (`.srt`) ID tabanlı olduğu için ADV çevirisiyle otomatik eşleşir.

## Sorumluluk Reddi

Bu yama telif hakkı sahiplerinin haklarına saygı göstermek amacıyla, yalnızca çeviri metinlerini içerir; oyunun orijinal dosyaları değiştirilmez. Oyunu oynamak için orijinal bir kopyaya sahip olmalısınız. Ticari amaçla kullanılamaz.
