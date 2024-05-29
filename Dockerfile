ARG BUILD_FROM
FROM $BUILD_FROM

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

ARG LICENSE_KEY
ENV LICENSE_KEY ${LICENSE_KEY}
ARG TOKEN
ENV TOKEN ${TOKEN}

CMD [ "/run.sh" ]