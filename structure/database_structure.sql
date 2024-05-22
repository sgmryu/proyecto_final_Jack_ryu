-- creación de base y tablas
DROP DATABASE IF EXISTS chelas;
CREATE DATABASE IF NOT EXISTS chelas;
use chelas;
CREATE TABLE IF NOT EXISTS tipocerveza (
    tipo_id INT PRIMARY KEY,
    nombre VARCHAR(50),
    estilo VARCHAR(50),
    descripcion TEXT
);
CREATE TABLE IF NOT EXISTS produccion (
    produccion_id INT PRIMARY KEY,
    tipo_id INT,
    cantidad INT,
    fecha DATE,
    FOREIGN KEY (tipo_id) REFERENCES tipocerveza(tipo_id)
);

CREATE TABLE IF NOT EXISTS venta (
    venta_id INT PRIMARY KEY,
    tipo_id INT,
    cantidad INT,
    ingresos DECIMAL(10, 2),
    fecha DATE,
    FOREIGN KEY (tipo_id) REFERENCES tipocerveza(tipo_id)
);
CREATE TABLE IF NOT EXISTS inventario (
    inventario_id INT PRIMARY KEY,
    tipo_id INT,
    cantidad INT,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (tipo_id) REFERENCES tipocerveza(tipo_id)
);

CREATE TABLE IF NOT EXISTS pedido (
    pedido_id INT PRIMARY KEY,
    tipo_id INT,
    cantidad INT,
    fecha_pedido DATE,
    fecha_entrega DATE,
    FOREIGN KEY (tipo_id) REFERENCES tipocerveza(tipo_id)
);
