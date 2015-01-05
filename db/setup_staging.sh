mysqladmin -u root drop -f  oc_optronics
mysqladmin -u root create  oc_optronics
mysql -u root  oc_optronics < 1_schema.sql
mysql -u root  oc_optronics < 2_init_data.sql