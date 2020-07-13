
CREATE SCHEMA `demoalgorith` ;
-- Mysql < 8
-- CREATE USER 'demouser'@'%' IDENTIFIED BY 'carm3l1t4s';
-- Mysql >= 8
CREATE USER 'demouser'@'%' IDENTIFIED WITH mysql_native_password BY 'carm3l1t4s';
GRANT ALL ON demoalgorith.* TO 'demouser'@'%';
