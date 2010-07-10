# Kişisel Sayfalar İçin 19 Jekyll Şablonu

TODO

## Başlangıç

1. Başlamadan önce lütfen aşağıdaki dokümanları okuyun:

    - Bu depoda kullanılan konvansiyonlar için

    - Jekyll'ı tanımak için

    - Site hazırlarken izlemeniz gereken ilkeler için

2. Depoyu GitHub'da çoğaltın.  Resimde görülen "fork" butonuna tıklayın.

   ![GitHub Fork](http://00010011.github.com/ben/assets/github-fork.png)

3. Çoğalttığınız depo adını değiştirmek için resimde görülen "admin" butonuna
   tıklayarak depo ayarlarına girin.

   ![GitHub Admin](http://00010011.github.com/ben/assets/github-admin.png)

4. Depo adını GitHub'ın kişisel sayfalar için istediği `<hesapadı>.github.com`
   biçimine getirin.  Bu işlemi resimde görüldüğü gibi yapabilirsiniz.
   (Resimde görülen hesap adı `deney` olduğundan önceki adı `ben` olan depo
   `deney.github.com` olarak değiştirilmektedir.)

   ![GitHub Rename](http://00010011.github.com/ben/assets/github-rename.png)

5. İsmi değişmiş olan deponun kopyasını makinenize alın.

            git clone git@github.com:<hesapadı>/<hesapadı>.github.com

6. Bu aşamadan sonra depoyla birlikte gelen kurulum betiğini
   kullanabilirsiniz.
    
            _scripts/install

7. Yaptığınız ön düzenlemeleri kaydedin ve GitHub'a gönderin.

            git commit -a -m ilk
            git push origin master

8. Her şey yolunda gitmişse kişisel sitenize aşağıdaki adresten erişebiliyor
   olmanız lazım.

            http://<hesapadı>.github.com

   GitHub'ın siteyi oluşturması (veya güncellemesi) biraz zaman almaktadır.
   Değişiklikleri GitHub'a gönderdikten sonra kısa bir süre beklemeyi
   unutmayın.

9. Yeni belge eklemek için "Nasıl Belge Eklerim?" bölümünü, sitenizi
   özelleştirmek için "Nasıl Özelleştiririm?" bölümünü okuyun.

## Belge Numaraları

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

            http://00010011.biz/100203

Bu örnekten anlaşılacağı gibi:

- Her gönderi **6 basamaklı** tekil bir sayıyla (`100203`) karakterize
  edilmektedir.  Buna "belge numarası" diyoruz.

- Belge numarasının ilk basamağı (`1`) gönderinin ait olduğu kategoriyi
  göstermektedir.

## Nasıl Belge Eklerim?

Depoya belge eklerken atılması gereken ilk adım belge kategorisini
belirlemektir.  Bu konu "Hangi Belge Kategorisini Kullanmalıyım?" bölümünde
kısaca özetlenmiştir.  Daha ayrıntılı bilgi almak için lütfen [TODO](TODO)
belgesini okuyun.

Yazmayı düşündüğünüz belgenin kategorisini `1` olarak seçtiğinizi varsayalım.
Bu durumda bu belgeyi şu adımları izleyerek depoya ekleyebilirsiniz:

- `1/_posts` dizinine geçin.

- Dizindeki en büyük `sıra` numaralı belgeyi belirleyin.  Örneğin aşağıdaki
  gibi bir dizin içeriğinde bu dosya `2010-07-08-00003.md` olacaktır.

            2010-06-30-00000.md
            2010-06-30-00001.md
            2010-07-01-00002.md
            2010-07-08-00003.md

- Sıra numarasını bir artırarak ve günün tarihini kullanarak yeni belge ismini
  oluşturun.  Örneğin "09 Temmuz 2010" tarihindeyse yukarıdaki örneğe göre
  yeni belge ismi `2010-07-10-00004.md` olacaktır.

- Belgeyi yazın ve GitHub'a gönderin.

            $EDITOR 2010-07-10-00004.md # belgeyi düzenle
            git add 2010-07-10-00004.md # depoya ekle
            git commit -m "yeni belge"  # kaydet
            git push origin master      # gönder

- Kategori `1`, sıra `00004` kullandıldığına göre bu belgenin (6 basamaklı)
  belge numarası `100004` olacak ve belgenin HTML olarak derlenmiş haline
  aşağıdaki adresten erişebileceksiniz.

            http://00010011.biz/100004


## Hangi Belge Kategorisini Kullanmalıyım?

Örnek bir senaryo olarak GitHub'ın kullanımını yeni bir hesap açmaktan
başlayarak yeni bir depo oluşturmaya kadar baştan sona anlatan bir doküman
yazmak istediğinizi varsayalım.  Buna göre belgenin kategorisini belirlemek
için aşağıdaki sorgulamayı yapabilirsiniz.

0. Belge, "öğreten" olmaktan çok kişisel görüş ve deneyimlerinizi yansıtan
   (örneğin bir günlük girdisi gibi) kişisel bir belge mi?  Evet ise `0`
   kategorisini kullanın.  Örnekte cevap **hayır** .  Eğer örnekteki belge
   Ubuntu'nun son sürümü hakkındaki görüşlerinizi anlatan bir belge olsaydı bu
   kategoriyi kullanabilirdiniz.

9. Teknik nitelikteki bu belge, kısa bir bilgi notu mu?  Evet ise `9`
   kategorisini kullanın.  Örnekte cevap **hayır**.  Eğer örnekteki belge
   basitçe GitHub'ın tek bir özelliğini birkaç paragrafta anlatan kısa bir
   bilgi notu olsaydı `9` kategorisini kullanabilirdiniz.

2. Belge, teknik bir konuyu bilgi yönünden sunmaktan çok, izlenmesi gereken
   ilke veya pratikler yönünden mi ele alıyor?  Örnekte cevap (büyük ölçüde)
   **hayır**.  Eğer örnekteki belge GitHub üzerinden birlikte çalışma
   sırasında uyulması gereken bir prosedürü anlatan bir belge olsaydı `2`
   kategorisini kullanabilirdiniz.

1. Belge, teknik bir konuyu "öğreten" üslubunda sunan (örneğin bir "NASIL"
   veya "tutoryal" gibi) göreceli olarak uzun bir belge mi?  Bu tür belgeler
   uzun olması, bir veya birkaç küçük bilgiden çok daha fazlasını içermesi
   yönüyle `9` kategorisinden ayrılmaktadır.  Örnekte cevap **evet**.

7. Yukarıdaki kategorilerin hiçbirine uymuyorsa (nadir bir durum) `7`
   kategorisini kullanabilirsiniz.


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
  NASIL](belgesini) okuyun.

- `_includes`: Şablonlarda kullanılan "işlev" parçaları.  Bu şablon depoda
  bulunan işlevler, özelleştirilmesi zor büyük dosyalar yerine, parçalı halde
  bu dizindeki dosyalara dağıtılmıştır.  Yapacağınız özelleştirmelerde ilgili
  parçaları `include` ederek o özellikten yararlanabilirsiniz.

- `assets`: Depo özelleştirmesinde, içeriklerde kullanacağınız "sayısal
  varlık"ların (ör. görseller, resimler, CSS dosyaları, JavaScript betikleri)
  tutulacağı dizin.

- `atom.xml`: Depodan üretilen sitenin kök dizininde yayın yapacak "Atom" özet
  akışı tanımı.

- `404.html`: Web siteniz GitHub'da yayımlanıyorsa, bulunamayan dosyalar için
  üretilen `404` hataları bu sayfaya yönlendirilecektir.  (Not: GitHub'ın
  `404` yönlendirme özelliği geçici olarak kaldırılmıştır.)

## Site Görünümünü Nasıl Değiştirebilirim?

19 belge sınıflamasına uymak kaydıyla site görünümünü istediğiniz şekilde
değiştirebilirsiniz.  Bu değişiklikleri "hafiften ağıra" şekilde sıralarsak:

- Sitede kullanılan logo'yu `param.logo` parametresiyle değiştirebilirsiniz.
  Bu parametreyi `~` olarak ayarlarsanız logo görüntülenmez.

- Bazı belge kategorilerini, örneğin `2` ve `7` kategorilerini hiç
  kullanmıyorsanız bu kategorilerin kılavuzda görüntülenmemesi için aşağıdaki
  ayarı kullanabilirsiniz:

            param:
                ...
                nouse2: 1
                nouse7: 1

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

Sitenizi bu belgenin "Başlangıç" kısmındaki adımları izleyerek oluşturmuş
iseniz deponuzda `19` isimli bir başvuruya sahipsiniz demektir.  Bu
başvurudaki `ben` isimli dalda site şablonundaki en temel (ve değiştirmemiş
olmanızı beklediğimiz) dosyalar bulunmaktadır.  Aşağıdaki komutla bu
dosyalardaki değişiklikleri deponuza uygulayabilirsiniz.

            git ben

**Dikkat!**  Bu depoda `19/ben` isimli dalda bulunan dosyalardan herhangi
birini değiştirmiş iseniz yukarıdaki işlemler sonucunda, elle müdahele yoluyla
çözmeniz gereken bir "birleştirme uyuşmazlığı" ("merge conflict") ile
karşılaşabilirsiniz.  Bu nedenle lütfen `19/ben`'de de bulunan dosyaları
değiştirmeyin.  Bu dalda bulunan bir dizin altında (ör. `_layouts`) yeni bir
dosya oluşturabilirsiniz, bunun herhangi bir mahzuru yoktur.


## Siteyi Nasıl Test Edebilirim?

Siteyi test etmek için GitHub'a test gönderileri göndermenize gerek yok.
Jekyll'ı kendi makinenize kurarak program tarafından sunulan ve
`localhost:4000` adresinde servis yapan yerel sunucuyu kullanabilirsiniz.
Depoda bulacağınız `test` isimli betik tüm bu işlemleri yapabilmektedir.

            git test

Bu işlemleri elle yapmak istiyorsanız şu adımları izleyin.

- Önce gerekli paketleri kurun:

            sudo apt-get install ruby1.8-dev
            sudo gem install jekyll

- Jekyll'ı aşağıdaki gibi çalıştırın:

            jekyll --rdiscount --url http://localhost:4000 --server --auto

- Tarayıcınızda [localhost:4000](http://localhost:4000) yerel adresine girin.

- Depoda değişiklik yaptığınızda üretilen site de (`_site` dizini) otomatik
  olarak güncellenecektir.

  **dikkat!**  `_config.yml` dosyasında yaptığınız değişiklikler otomatik
  olarak etkinleşmeyecektir.  Bu dosyada değişiklik yapmışsanız yukarıdaki
  komutu tekrar çalıştırın.
