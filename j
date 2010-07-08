#!/bin/sh

JEKYLL=
for p in $(which jekyll) /var/lib/gems/1.8/bin/jekyll; do
	if [ -x "$p" ]; then
		JEKYLL="$p"
		break
	fi
done

if [ -z "$JEKYLL" ]; then
	printf >&2 "Jekyll kurulu değil; kurmak için:\n\n"
	printf >&2 "\tsudo apt-get install ruby1.8-dev\n"
	printf >&2 "\tsudo gem install jekyll\n"
	exit 1
fi

cat >&2 <<EOF
Jekyll bu konsolda sunucu kipinde çalıştırılacak.  Siteyi görüntülemek
için tarayıcıda şu adrese girin:

	http://localhost:4000

Lütfen sitede düzenleme yapmak için başka bir konsol açın.  Her düzenlemeden
sonra site otomatik olarak güncellenecektir.  Değişiklikleri görmek için
tarayıcıda açılı olan sayfayı tekrar yükleyin.  Üretilen dosyalar "_site"
dizinindedir.

DİKKAT!  "_config.yml" dosyasında yaptığınız değişiklikler otomatik olarak
etkinleşmeyecektir.  Bu dosyada değişiklik yapmışsanız bu betiği Ctrl-C ile
sonlandırıp tekrar çalıştırın.


EOF
exec $JEKYLL --rdiscount --url http://localhost:4000 --server --auto
