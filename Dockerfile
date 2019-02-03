FROM mysql
MAINTAINER hoaphan

ENV MYSQL_DATABASE=ny_cab_data MYSQL_ROOT_PASSWORD=123


COPY ny_cab_data_cab_trip_data_full.sql docker-entrypoint-initdb.d/
COPY ny_cab_data_cab_trip_data_full.sql /tmp/ny_cab_data_cab_trip_data_full.sql
COPY data.sh /tmp/data.sh

RUN chmod 744 /tmp/data.sh
RUN echo "/tmp/data.sh" >> entrypoint.sh	

EXPOSE 3306