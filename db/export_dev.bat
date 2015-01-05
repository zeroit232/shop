D:\xampp\mysql\bin\mysqldump -d --comments=FALSE -u root  oc_optronics > 1_schema.sql 
D:\xampp\mysql\bin\mysqldump -t --order-by-primary --comments=FALSE -u root  oc_optronics > 2_init_data.sql