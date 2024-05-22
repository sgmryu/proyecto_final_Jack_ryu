-- población de tablas
use chelas;
-- Insertar registros en la tabla TipoCerveza
INSERT INTO tipocerveza (tipo_id, nombre, estilo, descripcion) VALUES
(1, 'Pilsner', 'Lager', 'Cerveza de color dorado, con sabor suave y aroma floral.'),
(2, 'IPA', 'Ale', 'Cerveza de color ámbar, con un fuerte sabor a lúpulo y notas cítricas.'),
(3, 'Stout', 'Ale', 'Cerveza oscura, con cuerpo completo y notas a café y chocolate.'),
(4, 'Wheat', 'Trigo', 'Cerveza de trigo, refrescante y con sabores a plátano y clavo.'),
(5, 'Saison', 'Ale', 'Cerveza de temporada, con sabor especiado y afrutado.');

-- Insertar registros en la tabla Produccion
INSERT INTO produccion (produccion_id, tipo_id, cantidad, fecha) VALUES
(1, 1, 1000, '2024-05-01'),
(2, 2, 800, '2024-05-02'),
(3, 3, 600, '2024-05-03'),
(4, 4, 700, '2024-05-04'),
(5, 5, 500, '2024-05-05');

-- Insertar registros en la tabla Ventas
INSERT INTO venta (venta_id, tipo_id, cantidad, ingresos, fecha) VALUES
(1, 1, 800, 2000.00, '2024-05-01'),
(2, 2, 600, 3000.00, '2024-05-02'),
(3, 3, 500, 2500.00, '2024-05-03'),
(4, 4, 400, 1800.00, '2024-05-04'),
(5, 5, 300, 1500.00, '2024-05-05');

-- Insertar registros en la tabla Inventario
INSERT INTO inventario (inventario_id, tipo_id, cantidad) VALUES
(1, 1, 200),
(2, 2, 150),
(3, 3, 100),
(4, 4, 120),
(5, 5, 80);

-- Insertar registros en la tabla Pedidos
INSERT INTO pedido (pedido_id, tipo_id, cantidad, fecha_pedido, fecha_entrega) VALUES
(1, 1, 100, '2024-05-01', '2024-05-10'),
(2, 2, 80, '2024-05-02', '2024-05-09'),
(3, 3, 70, '2024-05-03', '2024-05-08'),
(4, 4, 90, '2024-05-04', '2024-05-07'),
(5, 5, 60, '2024-05-05', '2024-05-06');
