FROM platerecognizer/alpr-stream

# Install necessary packages for bashio
# Assume Debian-based image; use 'apk' if Alpine-based
RUN \
  apk add --no-cache \
    example_alpine_package

# Ensure bashio is sourced in every bash session
RUN echo "source /usr/lib/bashio/bashio.sh" >> /etc/bash.bashrc

# Copy data for add-on
COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]