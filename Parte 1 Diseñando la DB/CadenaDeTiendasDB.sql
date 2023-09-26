-- Crear la base de datos
CREATE DATABASE CadenaDeTiendasDB;

-- Usar la base de datos
USE CadenaDeTiendasDB;

-- Crear la tabla Categoria
CREATE TABLE Categoria (
    id INT PRIMARY KEY,
    nombre VARCHAR(255)
);

-- Crear la tabla Producto
CREATE TABLE Producto (
    id INT PRIMARY KEY,
    nombre VARCHAR(255),
    marca VARCHAR(255),
    categoria_id INT,
    precio_unitario DECIMAL(10, 2),
    FOREIGN KEY (categoria_id) REFERENCES Categoria(id)
);

-- Crear la tabla Sucursal
CREATE TABLE Sucursal (
    id INT PRIMARY KEY,
    nombre VARCHAR(255),
    direccion VARCHAR(255)
);

-- Crear la tabla Stock
CREATE TABLE Stock (
    id INT PRIMARY KEY,
    sucursal_id INT,
    producto_id INT,
    cantidad INT,
    UNIQUE KEY unique_stock (sucursal_id, producto_id),
    FOREIGN KEY (sucursal_id) REFERENCES Sucursal(id),
    FOREIGN KEY (producto_id) REFERENCES Producto(id)
);

-- Crear la tabla Cliente
CREATE TABLE Cliente (
    id INT PRIMARY KEY,
    nombre VARCHAR(255),
    telefono VARCHAR(20)
);

-- Crear la tabla Orden
CREATE TABLE Orden (
    id INT PRIMARY KEY,
    cliente_id INT,
    sucursal_id INT,
    fecha DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Cliente(id),
    FOREIGN KEY (sucursal_id) REFERENCES Sucursal(id)
);

-- Crear la tabla Item
CREATE TABLE Item (
    id INT PRIMARY KEY,
    orden_id INT,
    producto_id INT,
    cantidad INT,
    monto_venta DECIMAL(10, 2),
    FOREIGN KEY (orden_id) REFERENCES Orden(id),
    FOREIGN KEY (producto_id) REFERENCES Producto(id)
);
