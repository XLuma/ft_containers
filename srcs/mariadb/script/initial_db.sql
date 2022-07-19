CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'llaplant'@'%' IDENTIFIED BY '12345';
GRANT ALL PRIVILEGES ON wordpress.* TO 'llaplant'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root12345';