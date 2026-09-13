# Funguys Swarm — Türkçe Yama

Oyunun **tam çevirisi**: tüm arayüz, diyaloglar, yetenek/mutasyon açıklamaları, görevler ve Sığınak menüleri Türkçe.

- Çevirmen: **mertpivvo**
- Sürüm: 1.0 (31.08.2026)
- Durum: ✅ Tam — 2.434 metin (15K kelime), 59 StringTable
- Tür: Survivor roguelite / bullet hell — Stairway Games

## Kurulum

1. `zzz_Turkce_P.pak` dosyasını indirin.
2. Oyunun kurulu olduğu klasörde şu yolu açın:
   ```
   Funguys Swarm/Funguys/Content/Paks/~mods/
   ```
   (`~mods` klasörü yoksa oluşturun)
3. `zzz_Turkce_P.pak` dosyasını bu klasöre **kopyalayın**. Orijinal oyun dosyalarına dokunmayın — yama ayrı bir mod pak olarak yüklenir.
4. Oyunu başlatın (dil İngilizce kalsın). Menüler, diyaloglar ve yetenek açıklamaları Türkçe olacak. Ayarlar menüsünde `Ayarlar - mertpivvo` imzasını göreceksiniz.

## Kaldırma

`~mods` klasöründen `zzz_Turkce_P.pak` dosyasını silmeniz yeterli — oyun orijinal haline döner.

## Teknik Detaylar

- Unreal Engine 5 (V11, Oodle) mod pakı (`zzz_` öneki sayesinde en son yüklenir, `en` StringTable'larının üzerine yazar).
- 59 `LocTable` StringTable asset'i (`Generic`, `SkillMutation`, `AllDialogues` vb.) Türkçe karakterler (ğ, ş, ı, İ, ç, ö, ü) UTF-16LE olarak düzgün gömüldü.
- Kapsam: `LocTable_Generic` (147), `SkillMutation` (372), `AllDialogues` (229), `Panel` (171), `Skill` (115) ve diğer tüm tablolar.
- Video altyazıları ve arayüz aynı pak içindedir.

## Sorumluluk Reddi

Bu yama yalnızca çeviri metinlerini içerir; oyunun orijinal dosyaları değiştirilmez. Oyunu oynamak için orijinal bir kopyaya sahip olmalısınız. Ticari amaçla kullanılamaz.
