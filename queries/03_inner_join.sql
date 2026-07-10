USE MiniSistemaClientes;
GO

SELECT
    c.nombre AS cliente,
    pr.nombre AS producto,
    p.cantidad,
    p.fecha
FROM pedidos p
INNER JOIN clientes c
    ON p.id_cliente = c.id_cliente
INNER JOIN productos pr
    ON p.id_producto = pr.id_producto;