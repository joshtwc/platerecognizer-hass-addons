FROM platerecognizer/alpr-stream

RUN apk add --no-cache bash jq curl \
    && curl -J -L -o /tmp/bashio.tar.gz "https://github.com/hassio-addons/bashio/archive/v0.13.1.tar.gz" \
    && mkdir -p /usr/lib/bashio \
    && tar zxvf /tmp/bashio.tar.gz --strip 1 -C /usr/lib/bashio \
    && rm -rf /tmp/bashio.tar.gz

# Copy data for add-on
COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]