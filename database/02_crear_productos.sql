USE MiniSistemaClientes;
GO

IF OBJECT_ID('productos', 'U') IS NULL
BEGIN
    CREATE TABLE productos (
        id_producto INT PRIMARY KEY IDENTITY(1,1),
        nombre VARCHAR(100),
        categoria VARCHAR(50),
        precio DECIMAL(10,2),
        stock INT
    );
END
GO