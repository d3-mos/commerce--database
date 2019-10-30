grant all privileges on claropay.* to claropay@'%' identified by 'claropay';
grant all privileges on claropay.* to claropay@'localhost' identified by 'claropay';
flush privileges;

CREATE DATABASE claropay;
USE claropay;