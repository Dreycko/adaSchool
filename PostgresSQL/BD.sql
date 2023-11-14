-- Crear la tabla Categoria
CREATE TABLE Categoria (
    id SERIAL PRIMARY KEY,
    nombre TEXT
);

-- Crear la tabla Producto
CREATE TABLE Producto (
    id SERIAL PRIMARY KEY,
    nombre TEXT,
    marca TEXT,
    categoria_id INTEGER REFERENCES Categoria(id),
    precio_unitario NUMERIC(10, 2)
);

-- Crear la tabla Sucursal
CREATE TABLE Sucursal (
    id SERIAL PRIMARY KEY,
    nombre TEXT,
    direccion TEXT
);

-- Crear la tabla Stock
CREATE TABLE Stock (
    id SERIAL PRIMARY KEY,
    sucursal_id INTEGER REFERENCES Sucursal(id),
    producto_id INTEGER REFERENCES Producto(id),
    cantidad INTEGER,
    UNIQUE (sucursal_id, producto_id)
);

-- Crear la tabla Cliente
CREATE TABLE Cliente (
    id SERIAL PRIMARY KEY,
    nombre TEXT,
    telefono TEXT
);

-- Crear la tabla Orden
CREATE TABLE Orden (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER REFERENCES Cliente(id),
    sucursal_id INTEGER REFERENCES Sucursal(id),
    fecha DATE,
    total NUMERIC(10, 2)
);

-- Crear la tabla Item
CREATE TABLE Item (
    id SERIAL PRIMARY KEY,
    orden_id INTEGER REFERENCES Orden(id),
    producto_id INTEGER REFERENCES Producto(id),
    cantidad INTEGER,
    monto_venta NUMERIC(10, 2)
);
