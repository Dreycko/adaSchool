
-- Crear la tabla Categoria
CREATE TABLE Categoria (
    id INTEGER PRIMARY KEY,
    nombre TEXT
);

-- Crear la tabla Producto
CREATE TABLE Producto (
    id INTEGER PRIMARY KEY,
    nombre TEXT,
    marca TEXT,
    categoria_id INTEGER,
    precio_unitario NUMERIC(10, 2),
    FOREIGN KEY (categoria_id) REFERENCES Categoria(id)
);

-- Crear la tabla Sucursal
CREATE TABLE Sucursal (
    id INTEGER PRIMARY KEY,
    nombre TEXT,
    direccion TEXT
);

-- Crear la tabla Stock
CREATE TABLE Stock (
    id INTEGER PRIMARY KEY,
    sucursal_id INTEGER,
    producto_id INTEGER,
    cantidad INTEGER,
    UNIQUE (sucursal_id, producto_id),
    FOREIGN KEY (sucursal_id) REFERENCES Sucursal(id),
    FOREIGN KEY (producto_id) REFERENCES Producto(id)
);

-- Crear la tabla Cliente
CREATE TABLE Cliente (
    id INTEGER PRIMARY KEY,
    nombre TEXT,
    telefono TEXT
);

-- Crear la tabla Orden
CREATE TABLE Orden (
    id INTEGER PRIMARY KEY,
    cliente_id INTEGER,
    sucursal_id INTEGER,
    fecha DATE,
    total NUMERIC(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Cliente(id),
    FOREIGN KEY (sucursal_id) REFERENCES Sucursal(id)
);

-- Crear la tabla Item
CREATE TABLE Item (
    id INTEGER PRIMARY KEY,
    orden_id INTEGER,
    producto_id INTEGER,
    cantidad INTEGER,
    monto_venta NUMERIC(10, 2),
    FOREIGN KEY (orden_id) REFERENCES Orden(id),
    FOREIGN KEY (producto_id) REFERENCES Producto(id)
);
