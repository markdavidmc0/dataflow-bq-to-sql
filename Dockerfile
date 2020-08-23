FROM google/cloud-sdk:306.0.0-slim
COPY . /app
RUN apt-get install python3
CMD sh /app/set-up.sh \
    && python3 /app/copy_bq_to_sql.py \
    && sh /app/tear-down.sh