USE MiniSistemaClientes;
GO

-- 1. Cantidad total de pedidos
SELECT COUNT(*) AS total_pedidos
FROM pedidos;

-- 2. Pedidos por cliente
SELECT id_cliente, COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY id_cliente;

-- 3. Mayor cantidad comprada en un pedido
SELECT MAX(cantidad) AS mayor_cantidad
FROM pedidos;

-- 4. Menor cantidad comprada en un pedido
SELECT MIN(cantidad) AS menor_cantidad
FROM pedidos;

-- 5. Clientes con más de 2 pedidos
SELECT id_cliente, COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY id_cliente
HAVING COUNT(*) > 2;