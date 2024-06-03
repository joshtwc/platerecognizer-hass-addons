ARG BUILD_FROM
FROM $BUILD_FROM

# Copy data for add-on
COPY run.sh /
COPY pre_run.sh /
RUN chmod a+x /pre_run.sh
RUN chmod a+x /run.sh

CMD [ "/pre_run.sh" ]