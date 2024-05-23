USE chelas;
CREATE VIEW vistaventas AS
SELECT v.venta_id, t.nombre AS tipo_cerveza, v.cantidad, v.ingresos, v.fecha
FROM venta v
JOIN tipoCerveza t ON v.tipo_id = t.tipo_id;

CREATE VIEW vistainventario AS
SELECT i.inventario_id, t.nombre AS tipo_cerveza, i.cantidad, i.fecha_actualizacion
FROM inventario i
JOIN tipoCerveza t ON i.tipo_id = t.tipo_id;
