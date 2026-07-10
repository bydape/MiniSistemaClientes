    USE MiniSistemaClientes;
    GO

    SELECT
        c.nombre AS cliente,
        COUNT(p.id_pedido) AS total_pedidos,
        SUM(p.cantidad) AS total_productos_comprados
    FROM clientes c
    INNER JOIN pedidos p
        ON c.id_cliente = p.id_cliente
    GROUP BY c.nombre
    HAVING SUM(p.cantidad) > 3;