USE esquema_reto;

-- 1. CATEGORÍAS
INSERT INTO Categorias (ID_Categoria, Nombre) VALUES
(1, 'Burger'),
(2, 'Drink'),
(3, 'Sides'),
(4, 'Dessert');

-- 2. OFERTAS
INSERT INTO Ofertas (ID_Oferta, Nombre, Precio, fechaExpiracion) VALUES
(7, 'Classic at 7$ 20%', 9.99, '2025-05-31');

-- 3. INGREDIENTES
INSERT INTO Ingredientes (ID_Ingrediente, Nombre, unidadMedida, stockDisponible, tipoAlmacenamiento, Disponible) VALUES
(1, 'Beef patty', 'kg', 50.0, 'Refrigerated', 1),
(2, 'Lettuce', 'kg', 20.0, 'Refrigerated', 1),
(3, 'Bun', 'unit', 100.0, 'Ambient', 1),
(4, 'Cheese slice', 'unit', 50.0, 'Refrigerated', 1);

-- 4. PRODUCTOS
INSERT INTO Productos (ID_Producto, ID_Oferta, ID_Categoria, Nombre, Precio, Descripcion) VALUES
(20, 7, 1, 'Classic Burger', 7.99, 'Beef burger with lettuce, tomato, and cheese');

-- 5. PRODUCTOS_INGREDIENTES (usamos ID_Producto = 20 para que coincida con el producto insertado)
INSERT INTO Productos_Ingredientes (ID_ProductoIngrediente, ID_Ingrediente, ID_Producto, Cantidad) VALUES
(1, 1, 20, 0.15),
(2, 2, 20, 0.05),
(3, 3, 20, 1),
(4, 4, 20, 0.03);

-- 6. PROVEEDORES
INSERT INTO Proveedores (ID_Proveedor, nombreEmpresa, Telefono, Email) VALUES
(10, 'James Baxter & Son.', '01524 410910', 'james.baxter@baxterspottedshrimps.co.uk');

-- 7. PROVEEDORES_INGREDIENTES (el ID_Proveedor debe existir; en este caso solo existe el 10)
-- Corregimos los IDs de proveedor a 10 para evitar errores de FK
INSERT INTO Proveedores_Ingredientes (ID_ProveedorIngrediente, ID_Proveedor, ID_Ingrediente, precioUnitario, tiempoEntregaDias) VALUES
(1, 10, 1, 5.0, 2),
(2, 10, 3, 0.5, 1);

-- 8. ALMACÉN
INSERT INTO Almacen (ID_Almacen, Nombre, Capacidad, Ubicacion) VALUES
(1, 'Almacén Central', 500, 'Calle Falsa 123');

-- 9. RESTAURANTE
INSERT INTO Restaurante (ID_Restaurante, Nombre, Direccion, Telefono, Email, Aforo) VALUES
(1, 'EcoBurger Madrid', 'Calle Luna 4, Madrid', '911223344', 'madrid@ecoburger.com', 70);

-- 10. EMPLEADOS
INSERT INTO Empleados (ID_Empleado, ID_Restaurante, Nombre, Apellidos, DNI, Telefono, Sueldo, fechaContratacion) VALUES
(1, 1, 'Anastasia', 'Gómez Pérez', '12345678L', '600112233', 1200.00, '2023-04-01');
