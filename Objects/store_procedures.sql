use chelas;

-- Procedimiento 1: Actualizar el inventario después de una venta
CREATE PROCEDURE ActualizarInventarioDespuesVenta(venta_id INT)
BEGIN
    DECLARE tipo_id INT;
    DECLARE cantidad INT;
    SELECT tipo_id, cantidad INTO tipo_id, cantidad FROM Ventas WHERE venta_id = venta_id;
    UPDATE Inventario SET cantidad = cantidad - cantidad WHERE tipo_id = tipo_id;
END;

-- Procedimiento 2: Registrar un nuevo pedido
CREATE PROCEDURE RegistrarPedido(tipo_id INT, cantidad INT, fecha_pedido DATE, fecha_entrega DATE)
BEGIN
    INSERT INTO Pedidos (tipo_id, cantidad, fecha_pedido, fecha_entrega) VALUES (tipo_id, cantidad, fecha_pedido, fecha_entrega);
END;
