# Eslabong — Türkçe Yama

Godot 4 tabanlı roguelite/menajerlik oyunu **Eslabong** için tam Türkçe çeviri:
tüm arayüz, turnuva/kulüp menüleri, yetenek ve eşya açıklamaları Türkçe.

- Çeviri: **11.412 metin** (`Localization/en.json` ile birebir anahtar eşleşmesi, eksik/fazla yok)
- Sürüm: 1.0 (03.09.2026) — oyun sürümü Godot 4.6 / PCK v3 ile test edildi
- Durum: ✅ Tam — dil menüsünde gerçek "Türkçe" seçeneği

## Kurulum (Python gerekmez)

1. `Eslabong_Turkce_Yama_Kur.exe` dosyasını indirin (çeviri gömülüdür, ~9 MB).
2. Exe'yi içinde `eslabong.pck` olan oyun klasörüne kopyalayıp çalıştırın.
   (Başka klasördeyse program oyun klasörünü sorar.)
   Script önce yedek alır (`eslabong.pck.ORIJINAL_YEDEK`), sonra yamayı uygular.
3. Oyunu başlatın: **Ayarlar → Dil → Türkçe**.

## Alternatif kurulum (kaynak koddan)

## Kaldırma

`eslabong.pck.ORIJINAL_YEDEK` dosyasını `eslabong.pck` olarak geri kopyalayın.

## Teknik Detaylar

- `yama_dosyalari/` klasör yapısı PCK içindeki `res://` yollarını aynen yansıtır:
  - `Localization/tr.json` → oyuna yeni dil dosyası olarak eklenir
  - `Scripts/Autoloads/Localization.gdc` → `TRANSLATION_FILES`,
    `LOCALE_ALIASES` ve `LANGUAGE_OPTIONS` içine `tr` kaydı eklenmiş,
    GDRE 2.6.3 ile bytecode `ebc36a7` (4.5.0-stable) olarak yeniden derlenmiş hali
- Yama, PCK'nin şifreli dizinini çözüp (`eslabong_yama_uygula.py` içindeki anahtarla)
  yalnızca bu iki girdiyi ekler/günceller; diğer 76.631 dosyaya dokunulmaz,
  dosya-seviyesi şifreleme **açılmaz** (`flags=0` korunur).
- Font: oyunun NotoSans çok dilli yedek fontu ğ, ş, ı, İ, ç, ö, ü harflerini
  ek işlemsiz gösterir.

## Sorumluluk Reddi

Bu yama yalnızca çeviri metinlerini ve dil menüsü kaydını içerir.
Oyunu oynamak için orijinal bir kopyaya sahip olmalısınız.
Ticari amaçla kullanılamaz.
