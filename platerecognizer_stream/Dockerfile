FROM platerecognizer/alpr-stream

RUN apt-get update && apt-get install -y jq

# Copy data for add-on
COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]