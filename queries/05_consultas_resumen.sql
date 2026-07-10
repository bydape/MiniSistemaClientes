USE MiniSistemaClientes;
GO

--Total de pedidos realizados--
SELECT COUNT(*) AS total_pedidos
FROM pedidos;

--Cantidad total de productos vendidos--
SELECT SUM(cantidad) AS total_productos_vendidos
FROM pedidos;

--Pedido con mayor cantidad--
SELECT MAX(cantidad) AS mayor_cantidad
FROM pedidos;

--Pedido con menor cantidad--
SELECT MIN(cantidad) AS menor_cantidad
FROM pedidos;

--Promedio de productos por pedido--
SELECT AVG(cantidad) AS promedio_productos
FROM pedidos;