USE chelas;
CREATE ROLE acceso_total;
CREATE ROLE acceso_limitado;
GRANT ALL PRIVILEGES ON chelas.* TO acceso_total;
GRANT SELECT, INSERT ON chelas.* TO acceso_limitado;
CREATE USER 'dev'@'%' IDENTIFIED BY '123456';
GRANT acceso_total TO 'dev'@'%';
CREATE USER 'consultor'@'%' IDENTIFIED BY '123456';
GRANT acceso_limitado TO 'consultor'@'%';