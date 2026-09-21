#!/bin/sh
set -e
T=/usr/local/searxng/searx/static/themes/simple
CSS="$T/sxng-ltr.min.css"
cat /tmp/custom.css >> "$CSS"
rm -f "$CSS.br" "$CSS.gz"

TPL=/usr/local/searxng/searx/templates
REPO="https://github.com/VidwathN-Karanth/SecureSearch"

# rename brand text everywhere
grep -rl SearXNG "$TPL" | xargs -r sed -i 's/SearXNG/SecureSearch/g'

B="$TPL/simple/base.html"
# "Powered by SecureSearch" -> your repo
sed -i "s|<a href=\"{{ url_for('info', pagename='about') }}\">SecureSearch</a>|<a href=\"$REPO\">SecureSearch</a>|" "$B"
# "Source code" -> your repo
sed -i "s|<a href=\"{{ searxng_git_url }}\">|<a href=\"$REPO\">|" "$B"
# remove Issue tracker + Public instances links
sed -i '/Issue tracker/d; /Public instances/d' "$B"
