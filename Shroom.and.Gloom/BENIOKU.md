# Shroom and Gloom — Türkçe Yama

TEAM LAZERBEAM'in karanlık fantastik roguelike deckbuilder'ı Shroom and Gloom'un tam Türkçe yaması.

## Kurulum

1. `localization-string-tables-english(en)_assets_all.bundle` dosyasını oyunun `Shroom and Gloom_Data\StreamingAssets\aa\StandaloneWindows64\` klasörüne kopyala (üzerine yaz).
2. `catalog.json` dosyasını oyunun `Shroom and Gloom_Data\StreamingAssets\aa\` klasörüne kopyala (üzerine yaz).
3. Oyunu başlat, dil İngilizce kalması normaldir — Türkçe metinler İngilizce kanalına yüklenmiştir.

## Kapsam

- 2.797 metin: 959 kart adı, 875 kart açıklaması, 618 dünya/diyalog, 204 düşman, 187 arayüz
- Çevirmen: mertpivvo (Ayarlar ekranında imza: "AYARLAR - mertpivvo")
- Credits bölümü (geliştirici isimleri) bilinçli olarak çevrilmedi.

## Kaldırma

Oyunu doğrulayınca Steam orijinal dosyaları geri getirir. Ya da dosyaları silip Steam'in "dosya doğrulama" seçeneğini kullanın.

## Notlar

- Yama, oyunun Addressables sistemine uygun şekilde EN StringTable bundle'ını Türkçe içerikle yeniden paketler; Addressables CRC doğrulaması kapatılmıştır (catalog.json güncellemesi).
- Resim içindeki yazılar (logo/tabela grafikleri) kapsam dışıdır.
- Font taraması yapılmıştır: oyun NotoSans / LiberationSans / orange kid gibi fontlar kullanır; bunların tamamı Türkçe glifleri içerir. Kart isimlerinde kullanılan bazı dekoratif fontlarda (ShroomScript, BobbyJonesSoft) Türkçe karakter desteği eksiktir; bu fontlar yalnızca süsleme amaçlı olduğundan sorun çıkaracağı beklenmez. Oyun ilk açılışta başka bir dil seçilirse yama etkisizdir.
