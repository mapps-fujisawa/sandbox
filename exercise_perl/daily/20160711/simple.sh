#!/bin/sh

umask 0002
#eval "$(sh /web/httpd_surveyon/shared/rpa-core/bin/init-surveyon.sh)"

#DIR=$(dirname -- "$0")

#cd $DIR/.. && \
LANG=en_US.UTF-8 exec carton exec -- starman -Ilib \
    --preload-app \
    --workers=20 \
    --port=3020 \
    simple.psgi
