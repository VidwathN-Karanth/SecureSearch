FROM searxng/searxng:latest
COPY custom.css /tmp/custom.css
RUN cat /tmp/custom.css >> /usr/local/searxng/searx/static/themes/simple/sxng-ltr.min.css \
 && rm -f /usr/local/searxng/searx/static/themes/simple/sxng-ltr.min.css.br \
          /usr/local/searxng/searx/static/themes/simple/sxng-ltr.min.css.gz \
 && grep -rl SearXNG /usr/local/searxng/searx/templates/ | xargs -r sed -i 's/SearXNG/SecureSearch/g'
