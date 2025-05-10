USE esquema_reto;

CREATE TABLE Categorias (
    ID_Categoria INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100)
);

CREATE TABLE Ofertas (
    ID_Oferta INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Precio DECIMAL(10,2),
    Descripcion TEXT
);

CREATE TABLE Productos (
    ID_Producto INT AUTO_INCREMENT PRIMARY KEY,
    ID_Oferta INT,
    ID_Categoria INT,
    Nombre VARCHAR(100),
    Precio DECIMAL(10,2),
    Descripcion TEXT,
    FOREIGN KEY (ID_Oferta) REFERENCES Ofertas(ID_Oferta),
    FOREIGN KEY (ID_Categoria) REFERENCES Categorias(ID_Categoria)
);

CREATE TABLE Ingredientes (
    ID_Ingrediente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    UnidadMedida VARCHAR(50),
    StockDisponible DECIMAL(10,2),
    TipoAlmacenamiento VARCHAR(50),
    Disponible BOOLEAN
);

CREATE TABLE Productos_Ingredientes (
    ID_ProductoIngrediente INT AUTO_INCREMENT PRIMARY KEY,
    ID_Ingrediente INT,
    ID_Producto INT,
    Cantidad DECIMAL(10,2),
    FOREIGN KEY (ID_Ingrediente) REFERENCES Ingredientes(ID_Ingrediente),
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
);

CREATE TABLE Proveedores (
    ID_Proveedor INT AUTO_INCREMENT PRIMARY KEY,
    nombreEmpresa VARCHAR(100)
);

CREATE TABLE Almacen (
    ID_Almacen INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Capacidad INT,
    Ubicacion VARCHAR(100)
);

CREATE TABLE Proveedores_Ingredientes (
    ID_ProveedorIngrediente INT AUTO_INCREMENT PRIMARY KEY,
    ID_Proveedor INT,
    ID_Ingrediente INT,
    precioUnitario DECIMAL(10,2),
    tiempoEntregaDias INT,
    FOREIGN KEY (ID_Proveedor) REFERENCES Proveedores(ID_Proveedor),
    FOREIGN KEY (ID_Ingrediente) REFERENCES Ingredientes(ID_Ingrediente)
);

CREATE TABLE Restaurante (
    ID_Restaurante INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Direccion VARCHAR(200),
    Telefono VARCHAR(20),
    Email VARCHAR(100),
    Aforo INT
);

CREATE TABLE Empleados (
    ID_Empleado INT AUTO_INCREMENT PRIMARY KEY,
    ID_Restaurante INT,
    Nombre VARCHAR(100),
    Apellidos VARCHAR(100),
    DNI VARCHAR(20),
    Telefono VARCHAR(20),
    Sueldo DECIMAL(10,2),
    FechaContratacion DATE,
    FOREIGN KEY (ID_Restaurante) REFERENCES Restaurante(ID_Restaurante)
);

CREATE TABLE Usuarios (
    ID_Usuario INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Email VARCHAR(100),
    Sexo ENUM('M','F','Otro'),
    DNI VARCHAR(20),
    Telefono VARCHAR(20),
    Direccion VARCHAR(200)
);

CREATE TABLE Reseñas (
    ID_Reseña INT AUTO_INCREMENT PRIMARY KEY,
    ID_Usuario INT,
    ID_Restaurante INT,
    Valoracion INT,
    Fecha DATE,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario),
    FOREIGN KEY (ID_Restaurante) REFERENCES Restaurante(ID_Restaurante)
);

CREATE TABLE Pedidos (
    ID_Pedido INT AUTO_INCREMENT PRIMARY KEY,
    ID_Factura INT,
    ID_Restaurante INT,
    ID_Usuario INT,
    Numero INT,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario),
    FOREIGN KEY (ID_Restaurante) REFERENCES Restaurante(ID_Restaurante)
);

CREATE TABLE Detalles_Pedidos (
    ID_DetallePedido INT AUTO_INCREMENT PRIMARY KEY,
    ID_Pedido INT,
    ID_Producto INT,
    Cantidad INT,
    Observaciones TEXT,
    FOREIGN KEY (ID_Pedido) REFERENCES Pedidos(ID_Pedido),
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
);

CREATE TABLE Facturas (
    ID_Factura INT AUTO_INCREMENT PRIMARY KEY,
    FechaFactura DATE,
    ImporteTotal DECIMAL(10,2)
);

CREATE TABLE Detalles_Facturas (
    ID_DetalleFactura INT AUTO_INCREMENT PRIMARY KEY,
    ID_Detalle_Pedido INT,
    ID_Factura INT,
    PrecioUnitario DECIMAL(10,2),
    TotalLinea DECIMAL(10,2),
    Descuento DECIMAL(10,2),
    FOREIGN KEY (ID_Detalle_Pedido) REFERENCES Detalles_Pedidos(ID_DetallePedido),
    FOREIGN KEY (ID_Factura) REFERENCES Facturas(ID_Factura)
);

CREATE TABLE Puntos (
    ID_Puntos INT AUTO_INCREMENT PRIMARY KEY,
    ID_Usuario INT,
    PuntosActuales INT,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario)
);

CREATE TABLE Historial_Puntos (
    ID_HistorialPuntos INT AUTO_INCREMENT PRIMARY KEY,
    ID_Factura INT,
    Fecha DATE,
    Puntos INT, /*Positivo: operación en la que se ganan esos puntos; Negativo: en la que se canjean puntos*/
    TipoMovimiento ENUM('GANADO', 'CANJEADO'),
    Descripcion TEXT,
    FOREIGN KEY (ID_Factura) REFERENCES Facturas(ID_Factura)
);

CREATE TABLE Pagos (
    ID_Pago INT AUTO_INCREMENT PRIMARY KEY,
    ID_Factura INT,
    metodoPago VARCHAR(50),
    fechaPago DATE,
    estadoPago VARCHAR(20),
    FOREIGN KEY (ID_Factura) REFERENCES Facturas(ID_Factura)
);
