USE MiniSistemaClientes;
GO

-- 1. Mostrar todos los clientes
SELECT *
FROM clientes;

-- 2. Mostrar clientes activos
SELECT nombre, ciudad, estado
FROM clientes
WHERE estado = 'Activo';

-- 3. Mostrar clientes de Lima
SELECT nombre, ciudad
FROM clientes
WHERE ciudad = 'Lima';

-- 4. Ordenar clientes por edad de mayor a menor
SELECT nombre, edad
FROM clientes
ORDER BY edad DESC;

-- 5. Buscar clientes cuyo nombre contiene la letra A
SELECT nombre
FROM clientes
WHERE nombre LIKE '%a%';

-- 6. Mostrar clientes entre 25 y 35 años
SELECT nombre, edad
FROM clientes
WHERE edad BETWEEN 25 AND 35;

-- 7. Contar clientes por ciudad
SELECT ciudad, COUNT(*) AS total_clientes
FROM clientes
GROUP BY ciudad;

-- 8. Contar clientes por estado
SELECT estado, COUNT(*) AS total
FROM clientes
GROUP BY estado;