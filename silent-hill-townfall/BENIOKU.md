# Beni Oku — Kurulum

1. Oyunu tamamen kapatın.
2. `Townfall` klasörünü oyun ana dizinine kopyalayın ve klasörleri birleştirin.
3. Bonus Content yüklüyse `BonusApp` klasörünü de birleştirin.
4. Oyunu yeniden başlatın.

Ana paket Townfall/Content/Paks içine; bonus paketi BonusApp/Townfall_BonusContent/Content/Paks içine gelir. `~mods` klasörünü kullanmayın.

Ana paket:
- pakchunk0-Windows_P.pak
- pakchunk0-Windows_P.ucas
- pakchunk0-Windows_P.utoc

Bonus Content:
- Townfall_BonusContent-Windows_P.pak
- Townfall_BonusContent-Windows_P.ucas
- Townfall_BonusContent-Windows_P.utoc

Bu sürüm, oyun yüklenirken statik arayüz metinlerinin İngilizceyle değiştirilmesi sorununu düzeltir. Kurulu mod dosyaları `_P` uzantılı altı pakettir. Kaldırmak için yalnızca bu dosyaları silin; orijinal oyun paketleri değişmedi.

Sürüm notu (23.09.2026): sinematik altyazılar (DialogueContents, 411 satır: "Listen, I need you..." dahil) ve seçenek menülerindeki eksik "English" değerleri çevrildi. Toplam 7066 metin, 1549 dosya. Seçenekler (Görüntü Ekranı, Bulmaca Zorluğu, Altyazılar, Hoparlör Kurulumu vb.) artık Türkçe.

Çeviri ve paketleme: mertpivvo
Oyun sayfası: https://store.steampowered.com/app/1636440/SILENT_HILL_Townfall/

Türkçe karakter düzeltmesi: Türkçe harf içeren metinler UTF-16 biçiminde yeniden paketlendi. Menü ve harita dosyaları IoStore paketinden çıkarılarak doğrulandı.

