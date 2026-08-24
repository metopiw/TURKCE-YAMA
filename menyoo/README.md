# Menyoo v2.3.1 — %100 Türkçe Yama

MenyooSP v2.3.1 (ItsJustCurtis) için gerçek Türkçe karakterlerle (ç, ğ, ı, İ, ö, ş, ü) hazırlanmış çeviri.

- **Kaynak:** https://github.com/itsjustcurtis/MenyooSP (v2.3.1, hash `0D7DE9…`)
- **Dosya:** `Turkish.json` — 1196 anahtar, 822'sinde gerçek Türkçe karakter, biçim kodları (`~b~`, `~r~`, `~INPUT_*~`) korunmuş, kutucuksuz
- **Not:** Oyunun orijinal `font_lib_efigs_pc.gfx` fontları Türkçe glifleri zaten içeriyor; ek font yaması **gerekmez**

## Kurulum

1. `Turkish.json` dosyasını oyunun `menyooStuff\Language\` klasörüne kopyala:
   ```
   GTA V ana klasörü\menyooStuff\Language\Turkish.json
   ```
2. `menyooConfig.ini` dosyasını aç, `[settings]` altındaki satırı şöyle yap:
   ```
   language=Turkish
   ```
   Dosya konumu: `GTA V ana klasörü\menyooConfig.ini` (ScriptHookV'nin okuduğu ana config)

3. Oyunu başlat → F8 → Menyoo tamamen Türkçe açılmalı.

## Doğrulama

Eksik çeviri kalırsa `GTA V\menyooLog.txt` içinde `Missing translation:` satırı görünür.

## Geri Dönüş

Yedeğini geri kopyala veya `language=` satırını boş bırak.
