DROP DATABASE IF EXISTS chelas;
CREATE DATABASE chelas;
use chelas;
CREATE TABLE TipoCerveza (
    tipo_id INT PRIMARY KEY,
    nombre VARCHAR(50),
    estilo VARCHAR(50),
    descripcion TEXT
);
CREATE TABLE Produccion (
    produccion_id INT PRIMARY KEY,
    tipo_id INT,
    cantidad INT,
    fecha DATE,
    FOREIGN KEY (tipo_id) REFERENCES TipoCerveza(tipo_id)
);

CREATE TABLE Ventas (
    venta_id INT PRIMARY KEY,
    tipo_id INT,
    cantidad INT,
    ingresos DECIMAL(10, 2),
    fecha DATE,
    FOREIGN KEY (tipo_id) REFERENCES TipoCerveza(tipo_id)
);
CREATE TABLE Inventario (
    inventario_id INT PRIMARY KEY,
    tipo_id INT,
    cantidad INT,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (tipo_id) REFERENCES TipoCerveza(tipo_id)
);

CREATE TABLE Pedidos (
    pedido_id INT PRIMARY KEY,
    tipo_id INT,
    cantidad INT,
    fecha_pedido DATE,
    fecha_entrega DATE,
    FOREIGN KEY (tipo_id) REFERENCES TipoCerveza(tipo_id)
);
