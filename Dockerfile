ARG BUILD_FROM
ARG TOKEN
ARG LICENSE_KEY
FROM $BUILD_FROM

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

ENV LICENSE_KEY ${LICENSE_KEY}
ENV TOKEN ${TOKEN}

CMD [ "/run.sh" ]