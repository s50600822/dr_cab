FROM mysql
MAINTAINER hoaphan

ENV MYSQL_DATABASE=ny_cab_data MYSQL_ROOT_PASSWORD=123
COPY ny_cab_data_cab_trip_data_full.sql docker-entrypoint-initdb.d/
EXPOSE 3306