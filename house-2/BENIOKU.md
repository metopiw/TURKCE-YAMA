# House 2 — Türkçe Yama

Çevirmen: **mertpivvo**

Bu dosya yamanın nasıl kurulacağını anlatır. Adım adım uygula, 2 dakika sürer.

---

## 1. Oyun klasörünü bul

**Steam sürümü:** Steam'de oyuna **sağ tık → Yönet → Yerel dosyalara göz at**.
Açılan pencere oyun klasörüdür. İçinde `House 2.exe` göreceksin.

**Steam dışı sürüm:** Oyunu kurduğun klasör. İçinde `House 2.exe` olan klasör.

Bu klasörü açık bırak, sonra ki adımda lazım olacak.

---

## 2. Yedeğini al (önemli)

Oyun klasöründe şu 3 dosyayı bul ve masaüstüne (ya da başka bir yere) kopyala:

```
assets\data\01-texts.csv
assets\data\langs.csv
manifest\default.json
```

Bunlar oyunun orijinal dosyaları. Yama bozuk çıkarsa ya da geri dönmek
istersen bunları yerine koyacaksın.

---

## 3. Yama dosyalarını kopyala

İndirdiğin yama klasöründe 3 dosya var:

```
assets\data\01-texts.csv
assets\data\langs.csv
manifest\default.json
```

Bu 3 dosyayı **oyun klasörüne, aynı klasör yapısıyla** kopyala. Yani:

| Yama dosyası | Kopyalanacak yer (oyun klasörünün içinde) |
|---|---|
| `assets\data\01-texts.csv` | `House 2\assets\data\01-texts.csv` |
| `assets\data\langs.csv` | `House 2\assets\data\langs.csv` |
| `manifest\default.json` | `House 2\manifest\default.json` |

**En kolay yolu:** Yama klasöründeki `assets` ve `manifest` klasörlerini olduğu gibi
alıp oyun klasörünün içine sürükle. Windows "Bu hedef zaten var" derse
**"Dosyaları birleştir"** de, sonra "Bu dosya zaten var" uyarısında
**"Hedefteki dosyayı değiştir"** seç.

---

## 4. Oyunda Türkçe'yi seç

1. Oyunu aç.
2. **Options (Ayarlar)** menüsüne gir.
3. Dil seçeneğini bul. İki seçenek göreceksin: `English` ve `Chinese (Simplified)`.
4. **"Chinese (Simplified)"** yazanı seç.

Oyun Türkçe olacak. Ana menüde **"yeni oyun - mertpivvo"** yazısını görürsen yama
doğru kurulmuş demektir.

> **Neden "Chinese (Simplified)" seçiyoruz?**
> Oyunun dil menüsü oyunun kendi koduna sabit yazılmış; sadece İngilizce ve Çince
> seçeneği var, sonradan dil eklenemiyor. Menüye "Türkçe" yazabilmek için oyunun
> program dosyasını değiştirmek gerekiyor, bu da oyunu çalıştıramama riski taşıyor.
> Onun yerine Çince yuvası Türkçe'ye bağlandı: **etikette Çince yazıyor ama
> seçtiğinde oyun Türkçe açılıyor.**
>
> Yani: **Çince artık çalışmaz. İngilizce normal çalışır.**

---

## 5. Geri dönmek istersen

2. adımda yedeğini aldığın 3 orijinal dosyayı oyun klasörüne geri kopyala,
var olanları değiştir. Oyun eski hâline döner.

Yedek almadıysan Steam'de oyuna **sağ tık → Özellikler → Yerel Dosyalar →
Oyun dosyalarının bütünlüğünü doğrula** yap.

---

## Oyunda dikkatini çekecek bir şey

Oyunun fontu özel bir bitmap font ve içinde **ş ğ ı İ ç ö ü** harfleri **yok**.
Bu yüzden çeviride bu harflerin yerine düz harfler kullanıldı:

| Yazılacak | Görünen |
|---|---|
| şu an | su an |
| fırtına | firtina |
| yağmur | yagmur |
| güzel | guzel |
| çocuk | cocuk |
| İstanbul | Istanbul |

Yani metinlerde **ş→s, ğ→g, ı→i, İ→I, ç→c, ö→o, ü→u** dönüşümü var.
Okunur ve anlaşılır, sadece bu harfler aksansız görünür.

Bunun sebebi teknik: bu harfleri eklemek için oyunun font dosyalarının sıfırdan
yeniden üretilmesi gerekiyor. Oyun Stencyl ile yapılmış ve font dosyaları
Stencyl'in kapalı binary formatında — orijinal proje dosyası olmadan güvenli
şekilde değiştirilemiyor.

---

## Neler Türkçe

- Tüm diyaloglar ve etkileşim metinleri
- Eşya isimleri
- Ana menü, ayarlar menüsü, kayıt menüsü
- Başarımlar (achievements)
- Jurnal / not metinleri

Karakter isimleri ve marka adları (Tabby, Marnie, Pizza, DVD, XP gibi)
orijinal hâliyle bırakıldı.

---

## Sorun mu çıktı?

**Oyun hiç açılmıyor:** 2. adımdaki yedekleri geri koy.

**Oyun açılıyor ama İngilizce:** Ayarlar menüsünden "Chinese (Simplified)"
seçeneğini seçmedin. 4. adımı tekrar uygula.

**Metinler bozuk/kutucuklu:** Yama dosyaları tam kopyalanmamış. 3. adımı
kontrol et, özellikle `manifest\default.json` yerine gitmiş mi bak.
