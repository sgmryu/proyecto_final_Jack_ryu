use chelas;

-- Función 1: Calcular el total de ingresos por tipo de cerveza
CREATE FUNCTION TotalIngresosPorTipo(tipo_id INT) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(ingresos) INTO total FROM Ventas WHERE tipo_id = tipo_id;
    RETURN total;
END;

-- Función 2: Calcular el total de producción por tipo de cerveza
CREATE FUNCTION TotalProduccionPorTipo(tipo_id INT) RETURNS INT
BEGIN
    DECLARE total INT;
    SELECT SUM(cantidad) INTO total FROM Produccion WHERE tipo_id = tipo_id;
    RETURN total;
END;
