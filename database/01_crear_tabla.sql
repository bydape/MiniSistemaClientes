IF DB_ID('MiniSistemaClientes') IS NULL
BEGIN
    CREATE DATABASE MiniSistemaClientes;
END
GO

USE MiniSistemaClientes;
GO

IF OBJECT_ID('clientes', 'U') IS NULL
BEGIN
    CREATE TABLE clientes (
        id_cliente INT PRIMARY KEY IDENTITY(1,1),
        nombre VARCHAR(100),
        ciudad VARCHAR(50),
        edad INT,
        fecha_registro DATE,
        estado VARCHAR(20)
    );
END
GO