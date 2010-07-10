# Site Geliştiricileri İçin Notlar

Bu notlar şablon kullanıcılarına değil, şablonu geliştirenlere yazılmıştır.
**Depo kullanıcıları lütfen bu işlemleri siz yapmayın!**

- Depoda üç dal bulunmaktadır:

    + `master`: Kullanıcı sitesinin bulunduğu dal.  Sadece bu dalda bulunan
      (ör. `_config.yml`) ve diğer dallardan gelmeyen (ör.
      `_layouts/default.html` dosyası `ben` dalından gelmektedir) tüm dosyalar
      kullanıcı tarafından değiştirilebilir.  Site "döşemesi" niteliğindeki
      dosyalar bu dala konulmamalıdır.

    + `ben`: Döşeme dosyalarının bulunduğu dal.  Bu dalda kullanıcının
      "`git-ben`" sözde komutuyla değişiklikleri izleyebileceği kritik
      dosyalar bulunmaktadır.

    + `gh-pages`: Şablon sitenin örneğinin görüntülendiği dal.  Bu dalda
      örnek siteye özel dosyalar bulunmaktadır.

- Sitenin "döşeme" şablonunda değişiklikler/düzeltmeler yapmak gerektiğinde:

    + `ben` dalına geçin.

            git checkout ben

    + Değişiklerinizi yapın ve `git commit` ile kaydedin.

    + `master` dala geçerek döşemedeki değişiklikleri birleştirin.

            git checkout master
            git merge ben

    + `gh-pages` dalına geçerek değişiklikleri örnek siteye aktarın.

            git checkout gh-pages
            git merge master

    + Değişikliklerinizi GitHub'a gönderin:

            git push --all
