grant all privileges on CLAROPAY.* to claropay@'%' identified by 'claropay';
grant all privileges on CLAROPAY.* to claropay@'localhost' identified by 'claropay';
flush privileges;

CREATE DATABASE CLAROPAY;
USE CLAROPAY;