CREATE SCHEMA `bayserhonduras` ;
-- Mysql < 8
CREATE USER 'bayser'@'%' IDENTIFIED BY 'carm3l1t4s';
--CREATE USER 'bayser'@'%' IDENTIFIED WITH mysql_native_password BY 'carm3l1t4s';
-- Mysql >= 8
GRANT ALL ON bayserhonduras.* TO 'bayser'@'%';
