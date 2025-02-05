#!/bin/sh
JQUERY_VERSION="1.10.2"
STROPHE_VERSION="1.1.2"
BOOTSTRAP_VERSION="1.4.0"

cd www_files/js

rm -f jquery-$JQUERY_VERSION.min.js
wget http://code.jquery.com/jquery-$JQUERY_VERSION.min.js || exit 1

rm -f strophe.min.js
wget https://raw.github.com/strophe/strophe.im/gh-pages/strophejs/downloads/strophejs-$STROPHE_VERSION.tar.gz &&
	tar xzf strophejs-$STROPHE_VERSION.tar.gz strophejs-$STROPHE_VERSION/strophe.min.js &&
	mv strophejs-$STROPHE_VERSION/strophe.min.js . &&
	rm -r strophejs-$STROPHE_VERSION strophejs-$STROPHE_VERSION.tar.gz || exit 1

cd ../css
rm -f bootstrap-$BOOTSTRAP_VERSION.min.css
wget https://raw.github.com/twbs/bootstrap/v$BOOTSTRAP_VERSION/bootstrap.min.css -O bootstrap-$BOOTSTRAP_VERSION.min.css || exit 1
