-- 1. Ciudad
CREATE TABLE Ciudad (
    ID_Ciudad INT PRIMARY KEY,
    Nombre VARCHAR(100)
);

-- 2. Proveedores
CREATE TABLE Proveedores (
    ID_Proveedor INT PRIMARY KEY,
    Nombre VARCHAR(100),
    TotalDinero DECIMAL(10,2)
);

-- 3. Almacen
CREATE TABLE Almacen (
    ID_Almacen INT PRIMARY KEY,
    Capacidad INT,
    ID_Proveedor INT,
    FOREIGN KEY (ID_Proveedor) REFERENCES Proveedores(ID_Proveedor)
);

-- 4. Restaurante
CREATE TABLE Restaurante (
    ID_Restaurante INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Ubicacion VARCHAR(255),
    Altura INT,
    ID_Ciudad INT,
    ID_Almacen INT,
    FOREIGN KEY (ID_Ciudad) REFERENCES Ciudad(ID_Ciudad),
    FOREIGN KEY (ID_Almacen) REFERENCES Almacen(ID_Almacen)
);

-- 5. Usuarios
CREATE TABLE Usuarios (
    ID_Usuario INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Apellidos VARCHAR(100),
    Email VARCHAR(100),
    Edad INT,
    Sexo VARCHAR(10),
    DNI VARCHAR(20),
    Telefono VARCHAR(20),
    Direccion VARCHAR(255)
);

-- 6. Reseñas
CREATE TABLE Reseñas (
    ID_Reseña INT PRIMARY KEY,
    Valoracion INT,
    CantidadCadenas INT,
    Fecha DATE,
    ID_Usuario INT,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario)
);

-- 7. Empleados
CREATE TABLE Empleados (
    ID_Empleado INT PRIMARY KEY,
    Nombre VARCHAR(100),
    DNI VARCHAR(20),
    Telefono VARCHAR(20),
    Salario DECIMAL(10,2),
    ID_Restaurante INT,
    FOREIGN KEY (ID_Restaurante) REFERENCES Restaurante(ID_Restaurante)
);

-- 8. Categorias
CREATE TABLE Categorias (
    ID_Categoria INT PRIMARY KEY,
    Nombre VARCHAR(100)
);

-- 9. Ingredientes
CREATE TABLE Ingredientes (
    ID_Ingrediente INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Cantidad INT,
    Tipo VARCHAR(50),
    Aplicacion VARCHAR(100)
);

-- 10. Productos
CREATE TABLE Productos (
    ID_Producto INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Cantidad INT,
    Estado VARCHAR(50),
    Precio DECIMAL(10,2),
    Descripcion TEXT,
    ID_Categoria INT,
    FOREIGN KEY (ID_Categoria) REFERENCES Categorias(ID_Categoria)
);

-- 11. Producto_Ingredientes (N:M)
CREATE TABLE Producto_Ingredientes (
    ID_Producto INT,
    ID_Ingrediente INT,
    PRIMARY KEY (ID_Producto, ID_Ingrediente),
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto),
    FOREIGN KEY (ID_Ingrediente) REFERENCES Ingredientes(ID_Ingrediente)
);

-- 12. Ofertas
CREATE TABLE Ofertas (
    ID_Oferta INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Precio DECIMAL(10,2)
);

-- 13. Oferta_Productos (N:M)
CREATE TABLE Oferta_Productos (
    ID_Oferta INT,
    ID_Producto INT,
    PRIMARY KEY (ID_Oferta, ID_Producto),
    FOREIGN KEY (ID_Oferta) REFERENCES Ofertas(ID_Oferta),
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
);

-- 14. Pedido
CREATE TABLE Pedido (
    ID_Pedido INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Fecha DATE,
    ID_Usuario INT,
    ID_Restaurante INT,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario),
    FOREIGN KEY (ID_Restaurante) REFERENCES Restaurante(ID_Restaurante)
);

-- 15. Detalles_Pedido
CREATE TABLE Detalles_Pedido (
    ID_Detalle INT PRIMARY KEY,
    ID_Pedido INT,
    ID_Producto INT,
    Cantidad INT,
    FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido),
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
);

-- 16. Facturas
CREATE TABLE Facturas (
    ID_Factura INT PRIMARY KEY,
    Cantidad DECIMAL(10,2),
    Fecha DATE,
    ID_Pedido INT,
    FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido)
);

-- 17. Puntos
CREATE TABLE Puntos (
    ID_Puntos INT PRIMARY KEY,
    Cantidad INT,
    Fecha DATE,
    ID_Usuario INT,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario)
);