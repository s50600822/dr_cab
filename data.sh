mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "create database ny_cab_data"
mysql -u root -p"$MYSQL_ROOT_PASSWORD" ny_cab_data < /tmp/ny_cab_data_cab_trip_data_full.sql