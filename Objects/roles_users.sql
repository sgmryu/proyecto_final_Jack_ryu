-- Crear el rol con todos los permisos para chelas.*
CREATE ROLE full_access_role;

GRANT ALL PRIVILEGES ON chelas.* TO full_access_role;

-- Crear el rol con permisos de select e insert para chelas.*
CREATE ROLE limited_access_role;

GRANT SELECT, INSERT ON chelas.* TO limited_access_role;

-- Crear el primer usuario y asignarle el rol con todos los permisos
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password1';

GRANT full_access_role TO 'user1'@'localhost';

-- Crear el segundo usuario y asignarle el rol con permisos limitados
CREATE USER 'user2'@'localhost' IDENTIFIED BY 'password2';

GRANT limited_access_role TO 'user2'@'localhost';

