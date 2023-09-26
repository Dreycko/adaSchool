-- Crear la base de datos
CREATE DATABASE TiendaEnLineaDB;

-- Usar la base de datos
USE TiendaEnLineaDB;

-- Crear la tabla Categoria
CREATE TABLE Categoria (
    IDCategoria INT PRIMARY KEY,
    Nombre VARCHAR(255)
);

-- Crear la tabla Proveedor
CREATE TABLE Proveedor (
    IDProveedor INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Direccion VARCHAR(255),
    CorreoElectronico VARCHAR(255)
);

-- Crear la tabla Cliente
CREATE TABLE Cliente (
    IDCliente INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Direccion VARCHAR(255),
    CorreoElectronico VARCHAR(255)
);

-- Crear la tabla Producto
CREATE TABLE Producto (
    IDProducto INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Precio DECIMAL(10, 2),
    Descripcion TEXT,
    Categoria_ID INT,
    Proveedor_ID INT,
    FOREIGN KEY (Categoria_ID) REFERENCES Categoria(IDCategoria),
    FOREIGN KEY (Proveedor_ID) REFERENCES Proveedor(IDProveedor)
);

-- Crear la tabla Orden
CREATE TABLE Orden (
    IDOrden INT PRIMARY KEY,
    FechaOrden DATE,
    Cliente_ID INT,
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(IDCliente)
);

-- Crear la tabla Reseña
CREATE TABLE Reseña (
    IDReseña INT PRIMARY KEY,
    Cliente_ID INT,
    Producto_ID INT,
    Puntuacion INT,
    Comentario TEXT,
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(IDCliente),
    FOREIGN KEY (Producto_ID) REFERENCES Producto(IDProducto)
);
