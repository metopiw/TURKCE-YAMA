# Chaos Mod V 3.50 — UTF-8 Gerçek Türkçe Yama

Chaos Mod V (gta-chaos-mods) 254 efektinin tamamı gerçek Türkçe karakterlerle ve kutucuksuz.

- **Kaynak:** `ChaosMod.asi` orijinali (EN_YEDEK, 2.701.312 bayt)
- **Çıktı:** `ChaosMod_UTF8_TURKCE.asi` — 254/254 UTF-8 Türkçe, 0 ASCII düşme, 0 kısaltma hatası
- **Patcher:** `chaos_patcher_utf8.py` (avail + karakter-sınırı güvenli kısaltma, aynı klasörde)
- **Not:** Font analiziyle kanıtlandı — oyunun orijinal `font_lib_efigs_pc.gfx`'i Türkçe glifleri içeriyor. Önceki yamaların Windows-1254 kullanması kutucuk sebebiydi; bu yama UTF-8 ile çözer.

## Kurulum

1. Orijinali yedekle:
   ```
   copy GTA V\ChaosMod.asi GTA V\ChaosMod.asi.EN_YEDEK
   ```
2. Bu klasördeki `ChaosMod_UTF8_TURKCE.asi` dosyasını `GTA V\ChaosMod.asi` olarak kopyala.
3. Oyunu başlat → kaosu tetikle → sağ taraftaki efekt adları artık
   `Sinematik Araç Kamera`, `Araçlar Fırlatıldı`, `Herkese Rastgele Silah` gibi **tam Türkçe ve kutucuksuz** görünür.

## Yeniden Üretme

```bash
python chaos_patcher_utf8.py
# girdi:  GTA V\ChaosMod.asi.EN_YEDEK
# çıktı:  ChaosMod_UTF8_TURKCE.asi
```

## Geri Dönüş

```
copy /Y GTA V\ChaosMod.asi.EN_YEDEK GTA V\ChaosMod.asi
```
