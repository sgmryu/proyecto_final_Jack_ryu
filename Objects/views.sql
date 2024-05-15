use chelas;

-- Vista 1: Vista de ventas por tipo de cerveza
CREATE VIEW VistaVentas AS
SELECT v.venta_id, t.nombre AS tipo_cerveza, v.cantidad, v.ingresos, v.fecha
FROM Ventas v
JOIN TipoCerveza t ON v.tipo_id = t.tipo_id;

-- Vista 2: Vista de inventario actual
CREATE VIEW VistaInventario AS
SELECT i.inventario_id, t.nombre AS tipo_cerveza, i.cantidad, i.fecha_actualizacion
FROM Inventario i
JOIN TipoCerveza t ON i.tipo_id = t.tipo_id;
