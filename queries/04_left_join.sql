USE MiniSistemaClientes;
GO

SELECT
    c.nombre AS cliente,
    p.id_pedido,
    p.fecha,
    p.cantidad
FROM clientes c
LEFT JOIN pedidos p
    ON c.id_cliente = p.id_cliente;