# Kişisel Sayfalar İçin 19 Jekyll Şablonu

Bu depoda 19 organizasyonu üyelerinin kişsel sitelerinde yararlanabileceği
GitHub Jekyll şablonu bulunmaktadır.  Şablonla ilgili sorunları veya istekleri
lütfen [proje hataları sayfasına](http://github.com/00010011/ben/issues) girdi
ekleyerek bildirin.

**Sitenin örnek görünümüne [http://00010011.biz/ben](http://00010011.biz/ben)
adresinden ulaşabilirsiniz.**

## Kurulum

1. Depoyu GitHub'da çoğaltın.  Resimde görülen "fork" butonuna tıklayın.

   ![GitHub Fork](http://00010011.github.com/ben/assets/github-fork.png)

2. Depo adını GitHub'ın kişisel sayfaları tanımakta kullandığı
   "`<hesapadı>.github.com`" biçimine getirmeniz gerekiyor.  Çoğalttığınız
   yeni deponun GitHub sayfasına girin.
   
3. Resimde görülen "admin" butonuna tıklayarak depo ayarlarına girin.

   ![GitHub Admin](http://00010011.github.com/ben/assets/github-admin.png)

4. Depo adını "`<hesapadı>.github.com`" olarak değiştirin.  Bu işlem resimde
   örneklenmiştir.  (Resimde görülen hesap adı `deney` olduğundan önceki adı
   `ben` olan depo `deney.github.com` olarak değiştirilmektedir.)

   ![GitHub Rename](http://00010011.github.com/ben/assets/github-rename.png)

5. İsmi değişmiş olan deponun kopyasını makinenize alın.

            $ git clone git@github.com:<hesapadı>/<hesapadı>.github.com

6. Depoyla birlikte gelen kurulum betiğini çalıştırın.
    
            $ _scripts/install

   (Kurulum sürecinde karşılaştığınız sorunları lütfen raporlayın.)

Her şey yolunda gitmişse kişisel sitenize aşağıdaki adresten erişebiliyor
olmanız lazım.

            http://<hesapadı>.github.com

Dikkat!  GitHub'ın siteyi güncellemesi biraz zaman almaktadır.  Değişiklikleri
GitHub'a gönderdikten sonra kısa bir süre beklemeyi unutmayın.

Bu noktadan sonra deponuzu düzenlemeye, yeni belge eklemeye başlayabilirsiniz.
Lütfen bu işlemler için dokümanın tamamını okumayı unutmayın.


## Nasıl Belge Eklerim?

Sitede ["`0-1-2-7-9`" belgeleme sisteminin](TODO) Jekyll'a uyarlanmış bir
modeli kullanılmaktadır.  Bu model kısaca ilgili bölümde anlatılmıştır.
Sitede girdi ekleme, girdi düzenleme işlemlerini bu açıklamalara uygun şekilde
elle yapmak yerine depoda `_scripts` dizininde bulunan ve kurulum sırasında
Git "alias"ları tanımlanan "sözde git komutları"nı kullanabilirsiniz.

1. İlk adım ekleyeceğiniz belgenin kategorisini belirlemektir.  Örnek bir
   senaryo olarak GitHub'ın kullanımını yeni bir hesap açmaktan başlayarak
   yeni bir depo oluşturmaya kadar baştan sona anlatan bir doküman yazmak
   istediğinizi varsayalım.  Buna göre belgenin kategorisini belirlemek için
   aşağıdaki sorgulamayı yapabilirsiniz.

   **`0`** Belge, "öğreten" olmaktan çok kişisel görüş ve deneyimlerinizi
   yansıtan (örneğin bir günlük girdisi gibi) kişisel bir belge mi?  Evet ise
   `0` kategorisini kullanın.  Örnekte cevap **hayır** .  Eğer örnekteki belge
   Ubuntu'nun son sürümü hakkındaki görüşlerinizi anlatan bir belge olsaydı bu
   kategoriyi kullanabilirdiniz.

   **`9`** Teknik nitelikteki bu belge, kısa bir bilgi notu mu?  Evet ise `9`
   kategorisini kullanın.  Örnekte cevap **hayır**.  Eğer örnekteki belge
   basitçe GitHub'ın tek bir özelliğini birkaç paragrafta anlatan kısa bir
   bilgi notu olsaydı `9` kategorisini kullanabilirdiniz.

   **`2`** Belge, teknik bir konuyu bilgi yönünden sunmaktan çok, izlenmesi
   gereken ilke veya pratikler yönünden mi ele alıyor?  Örnekte cevap (büyük
   ölçüde) **hayır**.  Eğer örnekteki belge GitHub üzerinden birlikte çalışma
   sırasında uyulması gereken bir prosedürü anlatan bir belge olsaydı `2`
   kategorisini kullanabilirdiniz.

   **`1`** Belge, teknik bir konuyu "öğreten" üslubunda sunan (örneğin bir
   "NASIL" veya "tutoryal" gibi) göreceli olarak uzun bir belge mi?  Bu tür
   belgeler uzun olması, bir veya birkaç küçük bilgiden çok daha fazlasını
   içermesi yönüyle `9` kategorisinden ayrılmaktadır.  Örnekte cevap **evet**.

   **`7`** Yukarıdaki kategorilerin hiçbirine uymuyorsa (nadir bir durum) `7`
   kategorisini kullanabilirsiniz.

2. Belge kategorisini (`1`) bu şekilde belirledikten sonra bu kategoriye girdi
   eklemek için aşağıdaki komutu kullanın:

            $ git n 1

3. "`git-n`" komutu ilgili kategoride uygun sıra numarasını seçerek bir dosya
   oluşturmakta ve bu dosyayı depoya eklemektedir (`git add`).  Son adım
   olarak eklediğiniz belgeyi depoya kaydedip GitHub'a göndermelisiniz.
   Aşağıdaki komutlar bu işlemi yapmaktadır.

            $ git commit -m "yeni girdi"
            $ git push origin master

4. Eklediğiniz belgenin yayın adresine girerek üretilen HTML'yi kontrol edin.
   Örneğin "`1/_posts/2010-07-08-00004.md`" isimli bir girdinin yayın adresi
   "`http://<url>/100004`" olacaktır.  Burada  "`<url>`" yapılandırma
   sırasında seçtiğiniz ve genellikle "`<hesapadı>.github.com`" biçiminde olan
   site adresini göstermektedir.


## Nasıl Belge Düzenlerim?

İlgili belgeyi herhangi bir metin düzenleyicide açarak düzenlemeniz ve
değişiklikleri GitHub'a göndermeniz yeterlidir.  Bu noktada "`git-e`" sözde
Git komutu özellikle yeni girdi ekledikten sonra sıklıkla yaşanan "son eklenen
girdiyi aç - düzenle - çık" çevrimini kolaylaştırmaktadır.  Depoya eklediğiniz
son girdiyi düzenlemek için basitçe aşağıdaki komutu kullanın:

            $ git e

Bu komut kategori numarasını en son düzenleme yapılan kategori dizinine
bakarak otomatik şekilde belirlemektedir.  Depoya yeni bir girdi ekledikten
sonra, başka bir kategoride elle düzenleme yapmışsanız komut, son eklenen
girdiyi değil, o kategorinin son girdisini açar.  Böyle bir durumda son
eklenen girdiyi düzenlemek için kategori numarasını açık şekilde vermelisiniz.

            $ git e <kategori>

Belgeyi düzenledikten sonra değişiklikleri, uygun bir açıklamayla depoya
kaydedip GitHub'a göndermeyi unutmayın.  Örneğin bir imla hatası
düzeltmişseniz:

            $ git commit -m imla
            $ git push origin master


## Site Görünümünü Nasıl Değiştirebilirim?

"`0-1-2-7-9`" belgeleme modeline uymak kaydıyla site görünümünü istediğiniz
şekilde değiştirebilirsiniz.  Bu değişiklikleri "hafiften ağıra" şekilde
sıralarsak:

- Sitede kullanılan logo'yu `param.logo` parametresiyle değiştirebilirsiniz.
  Bu parametreyi `~` olarak ayarlarsanız logo görüntülenmez.

- Bazı belge kategorilerini, örneğin `2` ve `7` kategorilerini hiç
  kullanmıyorsanız bu kategorilerin kılavuzda görüntülenmemesi için aşağıdaki
  ayarı kullanabilirsiniz (öntanımlı yapılandırma da böyledir):

            param:
                ...
                nouse2: 1
                nouse7: 1

  Kullanılmayan kategorilere ait dizinleri de silmek isteyebilirsiniz.
  Örneğin aşağıdaki komutlar `2` ve `7` dizinlerini siler:

            $ git rm -r 2 7
            $ git commit -a -m "kullanılmayan 2 ve 7 kategorilerini sil"
            $ git push origin master

- Sitede kullanılan CSS'yi "üzerine yazma" yoluyla değiştirmek için depodaki
  `assets/local.css` dosyasını düzenleyebilirsiniz.

- Sitede kullanılan görsel ve temalar "CDN" işlevinde kullanılan bir dış
  adresten alınmaktadır.  Bu adres `_config.yml` dosyasında `assets`
  parametresiyle tanımlanmıştır.  Bu parametreyi değiştirerek sitenin baz CSS
  dosyasını ve görsellerini tümüyle değiştirmeniz mümkündür.  Fakat belirli
  işlevler çalışmayacağından bu yolu izlemek yerine `assets/local.css` ile
  oynayarak aynı amaca ulaşmanızı öneririz.

- Sitede Jekyll tarafından üretilen HTML çıktılarda yerleşim şablonu olarak
  `_layouts` dizini altındaki dosyalar kullanılmaktadır.  Bu dizinde kendi
  özel yerleşimlerinizi oluşturarak kullanabilirsiniz.  Fakat **dikkat**,
  lütfen mevcut dosyaları, örneğin `_layouts/default.html`, düzenlemek yerine
  bu dosyanın bir kopyasını farklı bir isimle oluşturarak değişikliklerinizi
  bu dosyada yapın.  Bunun nedeni bir sonraki bölümde açıklanmıştır.


## Site Şablonundaki Değişiklikleri Nasıl Alabilirim?

Sitenizi bu belgenin ilk bölümündeki adımları izleyerek oluşturmuş iseniz
deponuzda `19` isimli bir başvuruya sahipsiniz demektir.  Bu başvurudaki `ben`
isimli dalda site şablonundaki en temel (ve değiştirmemiş olmanızı
beklediğimiz) dosyalar bulunmaktadır.  Aşağıdaki "`git-ben`" sözde Git
komutuyla bu dosyalardaki değişiklikleri deponuza uygulayabilirsiniz.

            $ git ben

**Dikkat!**  Bu depoda `19/ben` isimli dalda bulunan dosyalardan herhangi
birini değiştirmiş iseniz yukarıdaki işlemler sonucunda, elle müdahele yoluyla
çözmeniz gereken bir "birleştirme uyuşmazlığı" ("merge conflict") ile
karşılaşabilirsiniz.  Bu nedenle lütfen `19/ben`'de de bulunan dosyaları
değiştirmeyin.  Bu dalda bulunan bir dizin altında (ör. `_layouts`) yeni bir
dosya oluşturabilirsiniz, bunun herhangi bir sakıncası yoktur.


## Siteyi Nasıl Test Edebilirim?

Siteyi test etmek için GitHub'a test gönderileri göndermenize gerek yoktur.
Jekyll'ı kendi makinenize kurarak program tarafından sunulan ve
`localhost:4000` adresinde servis yapan yerel sunucuyu kullanabilirsiniz.
Depodaki "`git-test`" sözde komutu bu işlemleri yapabilmektedir.

- Test sunucusunu çalıştırın.

            $ git test

- Tarayıcınızda [localhost:4000](http://localhost:4000) yerel adresine girin.

- Depoda değişiklik yaptığınızda üretilen site de (`_site` dizini) otomatik
  olarak güncellenecektir.

  **Dikkat!**  `_config.yml` dosyasında yaptığınız değişiklikler otomatik
  olarak etkinleşmeyecektir.  Bu dosyada değişiklik yapmışsanız yukarıdaki
  komutu tekrar çalıştırın.


## Yayın Numaraları

Site gönderileri `0`, `1` gibi numaralı dizinler altındaki `_posts` dizininde
`yıl-ay-gün-sıra.uzantı` biçiminde isimlendirilmiş dosyalarda bulunmaktadır.
Dizin numarası belge kategorisini; dosya ismindeki, Jekyll tarafından zorunlu
tutulan tarih ise belgenin oluşturulma tarihini göstermektedir.  Bu şablona
göre kullanılması zorunlu olan dosya ismindeki **5 basamaklı** `sıra` ilgili
belgeye kategori numarasıyla birlikte kalıcı web adresi ("permalink")
oluşturulurken kullanılmakta, `uzantı` ise belgenin hangi etiketleme dilinde
yazıldığını anlatmaktadır.

Örnek verecek olursak, `1/_posts/2010-06-30-00203.md` isimli gönderinin
kategorisi `1`, sırası `00203`, oluşturulma tarihi ise "30 Haziran 2010"dur.
Dosyanın `md` uzantısı bu girdinin
[Markdown](http://daringfireball.net/projects/markdown/syntax) etiketleme dili
ile yazıldığını göstermektedir.  Bu gönderiye `http://00010011.biz` sitesinde
aşağıdaki kalıcı web adresinden erişilebilir:

            http://00010011.biz/ben/100203

Bu örnekten anlaşılacağı gibi:

- Her gönderi **6 basamaklı** tekil bir sayıyla (`100203`) karakterize
  edilmektedir.  Buna "yayın numarası" diyoruz.

- Yayın numarasının ilk basamağı (`1`) gönderinin ait olduğu kategoriyi
  göstermektedir.


## Elle Nasıl Belge Eklerim?

Yazmayı düşündüğünüz belgenin kategorisini `1` olarak seçtiğinizi varsayalım.
Bu durumda bu belgeyi şu adımları izleyerek depoya ekleyebilirsiniz.
Örneklerde site adresinin `http://00010011.biz/ben` olduğu varsayılmıştır.

- `1/_posts` dizinine geçin.

- Dizindeki en büyük `sıra` numaralı belgeyi belirleyin.  Örneğin aşağıdaki
  gibi bir dizin içeriğinde bu dosya `2010-07-08-00003.md` olacaktır.

            2010-06-30-00000.md
            2010-06-30-00001.md
            2010-07-01-00002.md
            2010-07-08-00003.md

- Sıra numarasını bir artırarak ve günün tarihini kullanarak yeni belge ismini
  oluşturun.  Örneğin günün tarihi "09 Temmuz 2010" ise yukarıdaki örneğe göre
  yeni belge ismi `2010-07-10-00004.md` olacaktır.

- Belgeyi yazın ve GitHub'a gönderin.

            $ $EDITOR 2010-07-10-00004.md # belgeyi düzenle
            $ git add 2010-07-10-00004.md # depoya ekle
            $ git commit -m "yeni belge"  # kaydet
            $ git push origin master      # gönder

- Kategori `1`, sıra `00004` kullandıldığına göre bu belgenin (6 basamaklı)
  belge numarası `100004` olacak ve belgenin HTML olarak derlenmiş haline
  aşağıdaki adresten erişebileceksiniz.

            http://00010011.biz/ben/100004


## Depoda Ne Nedir?

Depodaki dosya/dizinler ve işlevleri şunlardır:

- `_config.yml`: Jekyll yapılandırma dosyası (YAML formatında).  Deponun pek
  çok özelliğini sadece bu dosyayı düzenleyerek değiştirebilirsiniz.

- `index.html`: Web sitesinin kök adresinde görüntülenecek dosya.

- `0`, `1`, `2`, `7` ve `9`: Bu bölüm dizinleri ilgili ilke belgesinde
  dokümante edilmiştir.  Site gönderileri bu dizinlerdeki `_posts` alt
  dizininde bulunmaktadır.

- `_layouts`: Depoya ekleyeceğiniz girdilerden HTML çıktı üretmekte
  kullanılacak olan Jekyll şablonları.  Ayrıntılı bilgi için lütfen [Jekyll
  NASIL](TODO) belgesini okuyun.

- `_includes`: Şablonlarda kullanılan "işlev" parçaları.  Bu şablon depoda
  bulunan işlevler, özelleştirilmesi zor büyük dosyalar yerine, parçalı halde
  bu dizindeki dosyalara dağıtılmıştır.  Yapacağınız özelleştirmelerde ilgili
  parçaları `include` ederek o özellikten yararlanabilirsiniz.

- `_scripts`: Sitede kullanılan tüm yardımcı betikler (sözde git komutları,
  kurulum betiği vb) bu dizindedir.

- `assets`: Depo özelleştirmesinde, içeriklerde kullanacağınız "sayısal
  varlık"ların (ör. görseller, resimler, CSS dosyaları, JavaScript betikleri)
  tutulacağı dizin.

- `atom.xml`: Depodan üretilen sitenin kök dizininde yayın yapacak "Atom" özet
  akışı tanımı.

- `404.html`: Web siteniz GitHub'da yayımlanıyorsa, bulunamayan dosyalar için
  üretilen `404` hataları bu sayfaya yönlendirilecektir.  (Not: GitHub'ın
  `404` yönlendirme özelliği geçici olarak kaldırılmıştır.)


## Mevcut GitHub Sitemi Bu Sisteme Nasıl Taşırım?

Aşağıdaki adımları izleyin:

- GitHub'daki eski depoyu silin.  Depo kopyasının makinenizde `<eski_depo>`
  adıyla zaten bulunduğunu varsayıyoruz.

- Bu belgede anlatılan şekilde kurulum yapın.

- Mevcut belgelerinizi "`0-1-2-7-9`" modeline uyarlayın.  Hangi belge hangi
  kategoride olmalı bunu belirleyin ve ilgili kategoride bir dizin açarak
  taşıma yapın.  Örneğin:

            $ ls <eski_depo>/_posts
            <eski_depo>/2005-01-01-<0-kategorisinde-bir-girdi>.md
            <eski_depo>/2005-01-01-<1-kategorisinde-bir-girdi>.md

            $ mkdir -p /tmp/0 /tmp/1
            $ cp <eski_depo>/2005-01-01-<0-kategorisinde-bir-girdi>.md /tmp/0
            $ cp <eski_depo>/2005-01-01-<1-kategorisinde-bir-girdi>.md /tmp/1

- Depoda bulunan `_scripts/migrate` betiğini çalıştırarak girdileri bu sisteme
  aktarın.

            $ _scripts/migrate /tmp/0 0/_posts
            $ _scripts/migrate /tmp/1 1/_posts

- Aktarılan girdileri kontrol ettikten sonra yeni depoya gönderin.

            $ git add 0 1
            $ git commit -a -m "eski site aktarıldı"
            $ git push origin master


## Kaynaklar

Sitenizde ileri düzeyde özelleştirmeler yapmak için aşağıdaki kaynaklara
başvurabilirsiniz.

- [GitHub sayfaları hakkında GitHub dokümantasyonu](http://pages.github.com/)

- [Jekyll dokümantasyonu](http://wiki.github.com/mojombo/jekyll/)

- [Liquid şablonlama sistemi](http://wiki.github.com/tobi/liquid/)


## Atıf

Şablon sitenin mevcut görünümünde Jekyll'ın yazarı [Tom
Preston-Werner'in](http://github.com/mojombo) kişisel sitesindeki görünüm esas
alınmıştır.
