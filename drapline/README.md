# DRAPLINE - Türkçe Yama

Oyunun **Türkçe yaması**: tüm diyaloglar, arayüz, menüler, HUD, dükkânlar, ansiklopedi ve veritabanı metinleri Türkçe.

- Çevirmen: **mertpivvo**
- Sürüm: v1.0 (Steam 1.0.0, 27.09.2026)
- Durum: ✅ ~17.400 benzersiz metin (toplam ~20.000 metin örneği)
- Tür: Post-apokalips hayatta kalma / dövüş RPG
- Steam: https://store.steampowered.com/app/3103780/DRAPLINE/
- Yöntem: Oyunun kendi çoklu dil sistemi (`KRD_MZ_Multilingual` / `Database_English`) + veri dosyaları; mod yükleyici yok

## Kapsam

| Katman | Miktar |
|---|---|
| Diyalog ve olay metinleri | 12.056 satır |
| Karakter / yetenek / eşya / durum / düşman veritabanı | 2.104 alan |
| Oyunun çoklu dil sistemindeki İngilizce katman (menü, HUD, dükkân, komut) | 5.218 blok |
| Harita serbest metinleri, dükkân etiketleri, ansiklopedi | 1.897 metin |

Karakter adları (Cham, Melty, Noir, Dorothy, Moon, Gemina, Labryn, Fracta, Kurya) bilinçli olarak çevrilmedi.

## Kurulum

1. `DRAPLINE-Turkce-Yama.zip` arşivini aç.
2. İçindeki `resources` klasörünü oyunun kurulu olduğu klasöre kopyala
   (`DRAPLINE.exe` dosyasının bulunduğu yer).
3. Oyunu başlat.
4. Sağ alttaki dil menüsünde **English** seçili kalsın — Türkçe metinler oyunun
   İngilizce dil katmanına yazılmıştır.
5. İlk açılışta *"Ayarların uygulanması için oyun kapatılacak"* uyarısı
   çıkabilir; OK'a basıp oyunu yeniden başlat.

Ek mod, kurulum veya tanıtıcı gerekmez. Yamayı kaldırmak için yama dosyalarını
silip Steam üzerinden doğrulama yapmak yeterlidir.

## Dosyalar

Yama 11 dosya içerir:

```
resources/app/app/data/CommonEvents.json
resources/app/app/data/Database_English.json
resources/app/app/data/Items.json
resources/app/app/data/Skills.json
resources/app/app/data/System.json
resources/app/app/data/Map001.json
resources/app/app/data/Map002.json
resources/app/app/data/Map006.json
resources/app/app/data/Map008.json
resources/app/app/data/Map011.json
resources/app/app/js/plugins.js
```

## Font notu

Oyunun ana piksel fontında (`x12y12pxMaruMinya.ttf`) `ğ Ğ ı İ ş Ş` glifleri
bulunmuyor. Bu nedenle `System.json` içindeki font yığınına Türkçe destekli
yedek fontlar tanımlandı ve `plugins.js` içindeki `FontLoad` listesine
`mplus-1m-regular.woff` eklendi. **Hiçbir karakter ASCII'ye çevrilmedi** —
bütün harfler oyun içinde ekranda tam Türkçe olarak doğrulandı
(başlık ekranı, isim girişi, savaş diyaloğu).

## Doğrulama

`KURULUM_DOGRULAMA.txt` — paket dosyalarının JSON/JS parse durumu, paket ile
oyun klasörü arasındaki hash karşılaştırması ve font doğrulama sonucu.
