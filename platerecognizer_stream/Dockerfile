FROM platerecognizer/alpr-stream

# Install necessary packages for bashio
# Assume Debian-based image; use 'apk' if Alpine-based
RUN apt-get update && \
    apt-get install -y bash jq curl && \
    rm -rf /var/lib/apt/lists/*

# Install bashio
RUN curl -J -L -o /tmp/bashio.tar.gz "https://github.com/hassio-addons/bashio/archive/v0.13.1.tar.gz" && \
    mkdir -p /usr/lib/bashio && \
    tar zxvf /tmp/bashio.tar.gz --strip 1 -C /usr/lib/bashio && \
    rm -rf /tmp/bashio.tar.gz

# Ensure bashio is sourced in every bash session
RUN echo "source /usr/lib/bashio/bashio.sh" >> /etc/bash.bashrc

RUN ln -S /config /user-data

# Copy data for add-on
COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]