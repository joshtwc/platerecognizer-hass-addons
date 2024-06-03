FROM platerecognizer/alpr-stream

# Copy data for add-on
COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]