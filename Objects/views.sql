-- vistas
use chelas;

-- Vista 1: Vista de ventas por tipo de cerveza
CREATE VIEW vistaventas AS
SELECT v.venta_id, t.nombre AS tipo_cerveza, v.cantidad, v.ingresos, v.fecha
FROM venta v
JOIN tipoCerveza t ON v.tipo_id = t.tipo_id;

-- Vista 2: Vista de inventario actual
CREATE VIEW vistainventario AS
SELECT i.inventario_id, t.nombre AS tipo_cerveza, i.cantidad, i.fecha_actualizacion
FROM inventario i
JOIN tipoCerveza t ON i.tipo_id = t.tipo_id;
