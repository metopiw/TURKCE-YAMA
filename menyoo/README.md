# Menyoo v2.3.1 — %100 Türkçe Yama (ASCII, çökme düzeltmesi)

MenyooSP v2.3.1 (ItsJustCurtis) için hazırlanmış **1196 girdilik tam Türkçe çeviri**.
Türkçe karakterler ASCII eşdeğerleriyle yazılmıştır (c, g, i, o, s, u) — GTA V'nin
oyun içi fontlarında kutucuk sorunu ve Menyoo 2.3.1'in dil yenileme hatasına karşı
tamamen güvenlidir.

- **Kaynak:** https://github.com/itsjustcurtis/MenyooSP (v2.3.1, hash `0D7DE9…`)
- **Dosya:** `Turkish.json` — 1196 anahtar, %100 ASCII, UTF-8 (BOM yok),
  biçim kodları (`~b~`, `~r~`, `~INPUT_*~`) birebir korunmuş
- **Düzeltme (25.08.2026):** Önceki sürümde oyun içi "Dil Dosyalarını Yenile"
  kullanılınca çökme (ScriptHookV erişim ihlali, id 5) görülüyordu. Sebep:
  `menyooConfig.ini`'de silinmiş `Turkish_YENI_1196.json` dosyasına yapılan
  geçersiz referans + Menyoo 2.3.1 dil kodundaki kırılgan işaretçi kullanımı.
  Bu sürümde dosya %100 ASCII'dir ve config `language=Turkish` ile kullanılmalıdır.

## Kurulum

1. `Turkish.json` dosyasını oyunun `menyooStuff\Language\` klasörüne kopyala:
   ```
   GTA V ana klasörü\menyooStuff\Language\Turkish.json
   ```
2. `menyooStuff\menyooConfig.ini` dosyasını aç, `[settings]` altındaki satırı şöyle yap:
   ```
   language=Turkish
   ```
   Dikkat: Menüdeki "Dil Dosyalarını Yenile" (Reload Language Files) seçeneğini
   oyun içinde kullanma; dil değiştirmek için listeyi kullan ya da oyunu yeniden başlat.

3. Oyunu başlat → F8 → Menyoo tamamen Türkçe açılmalı.

## Doğrulama

Eksik çeviri kalırsa `GTA V\menyooLog.txt` içinde `Missing translation:` satırı görünür.

## Geri Dönüş

`menyooConfig.ini` içinde `language=` satırını boş bırak (İngilizce'ye döner).
