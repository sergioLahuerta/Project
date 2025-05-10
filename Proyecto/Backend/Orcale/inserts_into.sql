
USE nombreDelEsquema;

INSERT INTO Categorias (ID_Categorias, Nombre) VALUES
(1, 'Burger'),
(2, 'Drink'),
(3, 'Sides');
(4, 'Dessert');

INSERT INTO Ofertas (ID_Ofertas, Nombre, Precio, fechaExpiracion) VALUES
(1, 'Classic at 7$ 20%', 9.99, '2025-05-31'),
(2, 'Ecologic 10%', 3.50, '2025-07-31');
(3, 'Silencer 50%', 3.50, '2025-05-31');
(4, 'Maneater 20%', 9.99, '2025-06-31'),
(5, 'BBQ Classic 50%', 9.99, '2025-06-31'),

INSERT INTO Ingredientes (ID_Ingredientes, Nombre, unidadMedida, stockDisponible, tipoAlmacenaje, EstaActivo) VALUES
(1, 'Beef patty', 'kg', 50.0, 'Refrigerated', 1),
(2, 'Lettuce', 'kg', 20.0, 'Refrigerated', 1),
(3, 'Burger bun', 'units', 100, 'Dry', 1),
(4, 'Cheddar cheese', 'kg', 15.0, 'Refrigerated', 1),
(5, 'Tomato', 'kg', 10.0, 'Refrigerated', 1),
(6, 'Onion', 'kg', 10.0, 'Dry', 1),
(7, 'Pickles', 'kg', 8.0, 'Refrigerated', 1),
(8, 'Bacon', 'kg', 12.0, 'Refrigerated', 1),
(9, 'Chicken breast', 'kg', 18.0, 'Refrigerated', 1),
(10, 'Spicy sauce', 'liters', 5.0, 'Dry', 1),
(11, 'Ketchup', 'liters', 10.0, 'Dry', 1),
(12, 'Mayonnaise', 'liters', 7.0, 'Refrigerated', 1),
(13, 'Barbecue sauce', 'liters', 6.0, 'Dry', 1),
(14, 'Egg', 'units', 40, 'Refrigerated', 1),
(15, 'Mustard', 'liters', 5.0, 'Dry', 1),
(16, 'Vegan patty', 'kg', 12.0, 'Frozen', 1),
(17, 'Tofu', 'kg', 10.0, 'Refrigerated', 1),
(18, 'Mozzarella cheese', 'kg', 10.0, 'Refrigerated', 1),
(19, 'Jalapeños', 'kg', 6.0, 'Refrigerated', 1),
(20, 'Avocado', 'kg', 8.0, 'Refrigerated', 1),
(21, 'Pineapple', 'kg', 5.0, 'Refrigerated', 1),
(22, 'Chorizo', 'kg', 6.0, 'Refrigerated', 1),
(23, 'Ciabatta bun', 'units', 50, 'Dry', 1),
(24, 'Whole grain bun', 'units', 60, 'Dry', 1),
(25, 'Gluten-free bun', 'units', 30, 'Dry', 1),
(26, 'Grilled onions', 'kg', 4.0, 'Refrigerated', 1),
(27, 'Caramelized onions', 'kg', 4.0, 'Refrigerated', 1),
(28, 'Cucumber', 'kg', 5.0, 'Refrigerated', 1),
(29, 'Spinach', 'kg', 4.0, 'Refrigerated', 1),
(30, 'Blue cheese', 'kg', 3.0, 'Refrigerated', 1),
(31, 'Swiss cheese', 'kg', 6.0, 'Refrigerated', 1),
(32, 'Fried onion rings', 'units', 50, 'Frozen', 1),
(33, 'French fries', 'kg', 25.0, 'Frozen', 1),
(34, 'Sweet potato fries', 'kg', 10.0, 'Frozen', 1),
(35, 'Coleslaw', 'kg', 8.0, 'Refrigerated', 1),
(36, 'Beetroot', 'kg', 3.0, 'Refrigerated', 1),
(37, 'Red pepper', 'kg', 4.0, 'Refrigerated', 1),
(38, 'Green pepper', 'kg', 4.0, 'Refrigerated', 1),
(39, 'Iceberg lettuce', 'kg', 6.0, 'Refrigerated', 1),
(40, 'Arugula', 'kg', 4.0, 'Refrigerated', 1),
(41, 'Chili sauce', 'liters', 2.0, 'Dry', 1),
(42, 'Garlic aioli', 'liters', 3.0, 'Refrigerated', 1),
(43, 'Honey mustard', 'liters', 2.5, 'Dry', 1),
(44, 'Truffle mayo', 'liters', 1.5, 'Refrigerated', 1),
(45, 'Pastrami', 'kg', 5.0, 'Refrigerated', 1),
(46, 'Crispy onions', 'kg', 3.0, 'Dry', 1),
(47, 'Apple slices', 'kg', 2.0, 'Refrigerated', 1),
(48, 'Sun-dried tomatoes', 'kg', 2.0, 'Dry', 1),
(49, 'Cola', 'liters', 20.0, 'Dry', 1),
(50, 'Pepsi', 'liters', 15.0, 'Dry', 1),
(51, 'Sprite', 'liters', 15.0, 'Dry', 1),
(52, 'Fanta', 'liters', 15.0, 'Dry', 1),
(53, 'Iced tea', 'liters', 10.0, 'Dry', 1),
(54, 'Orange juice', 'liters', 12.0, 'Refrigerated', 1),
(55, 'Lemonade', 'liters', 10.0, 'Refrigerated', 1),
(56, 'Espresso shot', 'units', 1000, 'Dry', 1),
(57, 'Red Bull', 'liters', 6.0, 'Dry', 1),
(58, 'Sparkling water', 'liters', 10.0, 'Dry', 1),
(59, 'Still water', 'liters', 15.0, 'Dry', 1),
(60, 'Vanilla ice cream', 'liters', 5.0, 'Frozen', 1),
(61, 'Chocolate ice cream', 'liters', 5.0, 'Frozen', 1),
(62, 'Strawberry ice cream', 'liters', 5.0, 'Frozen', 1),
(63, 'Oreo pieces', 'kg', 1.0, 'Dry', 1),
(64, 'Whipped cream', 'liters', 2.0, 'Refrigerated', 1),
(65, 'Chocolate syrup', 'liters', 2.5, 'Dry', 1),
(66, 'Brownie chunks', 'kg', 2.0, 'Dry', 1),
(67, 'Nuts', 'kg', 3.0, 'Dry', 1),
(68, 'Cherries', 'kg', 2.0, 'Refrigerated', 1),
(69, 'Banana slices', 'kg', 2.0, 'Refrigerated', 1),
(70, 'Maple syrup', 'liters', 2.0, 'Dry', 1),
(71, 'Waffle cone', 'units', 30, 'Dry', 1),
(72, 'Cookie dough', 'kg', 3.0, 'Frozen', 1),
(73, 'Marshmallows', 'kg', 1.5, 'Dry', 1),
(74, 'Gummy bears', 'kg', 2.0, 'Dry', 1),
(75, 'Raspberry sauce', 'liters', 1.5, 'Refrigerated', 1),
(76, 'Strawberry syrup', 'liters', 1.5, 'Dry', 1),
(77, 'Graham crackers', 'kg', 1.5, 'Dry', 1),
(78, 'Peanut butter', 'kg', 2.0, 'Dry', 1),
(79, 'Almond milk', 'liters', 5.0, 'Refrigerated', 1),
(80, 'Coconut milk', 'liters', 5.0, 'Refrigerated', 1),
(81, 'Milkshake base', 'liters', 6.0, 'Refrigerated', 1),
(82, 'Vanilla extract', 'liters', 1.0, 'Dry', 1),
(83, 'Butter', 'kg', 3.0, 'Refrigerated', 1),
(84, 'Cinnamon', 'kg', 1.0, 'Dry', 1),
(85, 'Ice cubes', 'kg', 10.0, 'Frozen', 1),
(86, 'Cream cheese', 'kg', 3.0, 'Refrigerated', 1),
(87, 'Parmesan cheese', 'kg', 2.0, 'Dry', 1),
(88, 'Greek yogurt', 'kg', 4.0, 'Refrigerated', 1),
(89, 'Chocolate chips', 'kg', 2.0, 'Dry', 1),
(90, 'Vanilla syrup', 'liters', 1.5, 'Dry', 1),
(91, 'Pine nuts', 'kg', 1.0, 'Dry', 1),
(92, 'Basil', 'kg', 0.5, 'Refrigerated', 1),
(93, 'Mint leaves', 'kg', 0.5, 'Refrigerated', 1),
(94, 'Ginger', 'kg', 1.0, 'Dry', 1),
(95, 'Coconut flakes', 'kg', 1.0, 'Dry', 1),
(96, 'Hazelnut spread', 'kg', 2.0, 'Dry', 1),
(97, 'Blueberries', 'kg', 2.0, 'Refrigerated', 1),
(98, 'Raspberries', 'kg', 2.0, 'Refrigerated', 1),
(99, 'Carrot', 'kg', 5.0, 'Refrigerated', 1),
(100, 'Zucchini', 'kg', 4.0, 'Refrigerated', 1);



INSERT INTO Productos (ID_Productos, ID_Ofertas, ID_Categorias, Nombre, Precio, Descripcion) VALUES
(1, 1, 1, 'Classic Burger', 7.99, 'Beef burger with lettuce, tomato, and cheese'),
(2, NULL, 2, 'Water', 1.00, 'Bottled still water');
(2, NULL, 2, 'Cola', 1.50, 'Classic carbonated cola-flavored soft drink');
(2, NULL, 2, 'Pepsi', 1.30, 'Refreshing cola-flavored soft drink alternative');
(2, NULL, 2, 'Sprite', 1.40, 'Lemon-lime flavored soda, crisp and caffeine-free');
(2, NULL, 2, 'Fanta', 1.50, 'Orange-flavored soft drink with fruity taste');
(2, NULL, 2, 'Iced Tea', 1.20, 'Chilled sweetened tea with a hint of lemon');
(2, NULL, 2, 'Orange Juice', 1.50, '100% pure squeezed orange juice');
(2, NULL, 2, 'Red Bull Energy Drink', 1.80, 'Carbonated energy drink with caffeine and vitamins');
(2, NULL, 2, 'Sparkling Water', 1.20, 'Carbonated mineral water');
(2, NULL, 2, 'Coffee', 1.60, 'Freshly brewed hot coffee');

INSERT INTO Productos_Ingredientes (ID_Productos_Ingredientes, ID_Ingredientes, ID_Productos, Cantidad) VALUES
(1, 1, 1, 0.15),
(2, 2, 1, 0.05),
(3, 3, 1, 1),
(4, 4, 1, 0.03);

INSERT INTO Proveedores (ID_Proveedores, nombreEmpresa, Telefono, Email) VALUES
(1, 'James Baxter & Son.', '01524 410910', 'james.baxter@baxterspottedshrimps.co.uk'),
(2, 'Sysco', '281-584-1390', 'SyscoAppSupport@sysco.com'),
(3, 'Unilever Food Solutions', '0800 783 3728', 'info@ufs.com'),
(4, 'Gordon Food Service', '800-968-7500', 'support@gfs.com'),
(5, 'US Foods', '847-720-8000', 'customer.service@usfoods.com');

INSERT INTO Proveedores_Ingredientes (ID_ProveedoresIngredientes, ID_Proveedores, ID_Ingredientes, precioUnitario, tiempoEntregaDias) VALUES
(1, 1, 1, 5.0, 2),
(2, 2, 3, 0.5, 1);

INSERT INTO Almacen (ID_Almacen, Nombre, Capacidad, Ubicacion) VALUES
(1, 'Almacén Central', 500, 'Calle Falsa 123');

INSERT INTO Restaurante (ID_Restaurante, Nombre, Direccion, Telefono, Email, Abierto) VALUES
(1, 'EcoBurger Madrid', 'Calle Luna 4, Madrid', '911223344', 'madrid@ecoburger.com', 1);

INSERT INTO Empleados (ID_Empleados, ID_Restaurante, Nombre, Apellidos, Edad, DNI, Telefono, Salario, fechaContratacion) VALUES
(1, 1, 'Lucía', 'Gómez Pérez', 28, '12345678L', '600112233', 1200.00, '2023-04-01');

