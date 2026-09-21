FROM searxng/searxng:latest
COPY custom.css /tmp/custom.css
COPY rebrand.sh /tmp/rebrand.sh
RUN sh /tmp/rebrand.sh
