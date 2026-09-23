# Silent Hill: Townfall Türkçe Yama

Çeviri modeli: Gemini gemini-3.5-flash-lite. Düzenleme ve paketleme: mertpivvo.

## Kurulum

1. Oyunu tamamen kapatın.
2. Arşivdeki `Townfall` klasörünü oyun ana dizinine kopyalayıp birleştirin.
3. Bonus Content yüklüyse `BonusApp` klasörünü de birleştirin.
4. Oyunu yeniden başlatın.

IoStore paketleri doğrudan ilgili `Content/Paks` klasörlerine kopyalanır; `~mods` kullanılmaz.

Ana paket: `pakchunk0-Windows_P.pak`, `.ucas`, `.utoc`.
Bonus Content paketi: `Townfall_BonusContent-Windows_P.pak`, `.ucas`, `.utoc`.

Kaldırmak için yalnızca bu altı `_P` dosyasını silin. Orijinal oyun paketleri değiştirilmez.

## Düzeltme ve doğrulama

6.655 çeviri kaydı 833 varlığa işlendi. Oyunun yükleme sırasında `DialocTextBlock` metinlerini İngilizceyle yeniden yazması nedeniyle 1.299 sabit metin bileşeninde bu çalışma zamanı ezmesi kapatıldı. Yeni paket oyun Paks klasöründen tekrar çıkarılarak kontrol edildi; ana menüdeki beş etiket Türkçe ve mod paketinden geliyor. Son canlı oyun kontrolü kullanıcı tarafından yapılmalıdır.

Türkçe yama: mertpivvo

UTF-16 kodlama düzeltmesi: Türkçe karakter içeren metinler UTF-16 olarak yeniden paketlendi. 564 aday varlıkta eski UTF-8 biçiminde kalan Türkçe çeviri bulunmadı; menü ve harita dosyaları IoStore paketinden çıkarılarak statik doğrulamadan geçirildi.

