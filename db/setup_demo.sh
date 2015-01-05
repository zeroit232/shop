mysqladmin -u root --password=giaiphapnhanh drop -f  opencart_optronics
mysqladmin -u root --password=giaiphapnhanh create  opencart_optronics
mysql -u root --password=giaiphapnhanh  opencart_optronics < 1_schema.sql
mysql -u root --password=giaiphapnhanh  opencart_optronics < 2_init_data.sql
mysql -u root --password=giaiphapnhanh  opencart_optronics < 3_update_demo.sql