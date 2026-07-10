USE MiniSistemaClientes;
GO

IF OBJECT_ID('pedidos', 'U') IS NULL
BEGIN
    CREATE TABLE pedidos (
        id_pedido INT PRIMARY KEY IDENTITY(1,1),
        id_cliente INT,
        id_producto INT,
        cantidad INT,
        fecha DATE,

        FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
        FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
    );
END
GO