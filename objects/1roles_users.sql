USE chelas;
-- dcl con roles
-- Crear el rol con todos los permisos para chelas.*
CREATE ROLE acceso_total;
-- Crear el rol con permisos de select e insert para chelas.*
CREATE ROLE acceso_limitado;
GRANT ALL PRIVILEGES ON chelas.* TO acceso_total;
GRANT SELECT, INSERT ON chelas.* TO acceso_limitado;

-- Crear el primer usuario y asignarle el rol con todos los permisos
CREATE USER 'dev'@'%' IDENTIFIED BY '123456';
GRANT acceso_total TO 'dev'@'%';

-- Crear el segundo usuario y asignarle el rol con permisos limitados
CREATE USER 'consultor'@'%' IDENTIFIED BY '123456';
GRANT acceso_limitado TO 'consultor'@'%';






