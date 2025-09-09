-- ================================
-- Insertar categorías
-- ================================
insert into category (id, description, name) values
                                                 (nextval('category_seq'), 'Electrónica y gadgets', 'Electrónica'),
                                                 (nextval('category_seq'), 'Ropa y accesorios de moda', 'Ropa'),
                                                 (nextval('category_seq'), 'Alimentos y bebidas', 'Alimentos'),
                                                 (nextval('category_seq'), 'Muebles y decoración para el hogar', 'Muebles'),
                                                 (nextval('category_seq'), 'Juguetes y entretenimiento infantil', 'Juguetes'),
                                                 (nextval('category_seq'), 'Libros y material de lectura', 'Libros'),
                                                 (nextval('category_seq'), 'Artículos deportivos y fitness', 'Deportes'),
                                                 (nextval('category_seq'), 'Productos de belleza y cuidado personal', 'Belleza'),
                                                 (nextval('category_seq'), 'Electrodomésticos de cocina', 'Electrodomésticos'),
                                                 (nextval('category_seq'), 'Herramientas y bricolaje', 'Herramientas');

-- ================================
-- Insertar productos
-- ================================

-- Categoría 1: Electrónica (id = 1)
insert into product (id, description, name, available_quantity, price, category_id) values
                                                                                        (nextval('product_seq'), 'Smartphone gama media con 128GB de almacenamiento', 'Smartphone X', 150, 299.99, 1),
                                                                                        (nextval('product_seq'), 'Portátil ultraligero 14" con SSD 512GB', 'Laptop AirPro', 80, 899.99, 1),
                                                                                        (nextval('product_seq'), 'Auriculares inalámbricos con cancelación de ruido', 'Headphones Silence', 200, 149.99, 1);

-- Categoría 2: Ropa (id = 51)
insert into product (id, description, name, available_quantity, price, category_id) values
                                                                                        (nextval('product_seq'), 'Camiseta de algodón 100% color negro', 'Camiseta básica', 500, 9.99, 51),
                                                                                        (nextval('product_seq'), 'Pantalón vaquero slim fit', 'Jeans Slim', 300, 29.99, 51),
                                                                                        (nextval('product_seq'), 'Chaqueta deportiva unisex', 'Chaqueta Sport', 120, 49.99, 51);

-- Categoría 3: Alimentos (id = 101)
insert into product (id, description, name, available_quantity, price, category_id) values
                                                                                        (nextval('product_seq'), 'Paquete de pasta italiana 500g', 'Spaghetti Premium', 300, 1.99, 101),
                                                                                        (nextval('product_seq'), 'Caja de galletas artesanales 250g', 'Galletas Artesanas', 180, 3.49, 101),
                                                                                        (nextval('product_seq'), 'Aceite de oliva virgen extra 1L', 'Aceite Premium', 90, 7.99, 101);

-- Categoría 4: Muebles (id = 151)
insert into product (id, description, name, available_quantity, price, category_id) values
                                                                                        (nextval('product_seq'), 'Sofá de 3 plazas en color gris', 'Sofá moderno', 20, 499.99, 151),
                                                                                        (nextval('product_seq'), 'Mesa de comedor extensible', 'Mesa Expand', 15, 299.99, 151),
                                                                                        (nextval('product_seq'), 'Silla ergonómica de oficina', 'Silla Pro', 40, 199.99, 151);

-- Categoría 5: Juguetes (id = 201)
insert into product (id, description, name, available_quantity, price, category_id) values
                                                                                        (nextval('product_seq'), 'Muñeca interactiva con accesorios', 'Muñeca Clara', 75, 39.99, 201),
                                                                                        (nextval('product_seq'), 'Set de bloques de construcción 500 piezas', 'Bloques Creativos', 100, 29.99, 201),
                                                                                        (nextval('product_seq'), 'Coche teledirigido con batería recargable', 'Coche RC Turbo', 50, 59.99, 201);

-- Categoría 6: Libros (id = 251)
insert into product (id, description, name, available_quantity, price, category_id) values
                                                                                        (nextval('product_seq'), 'Libro de ciencia ficción edición de bolsillo', 'El viaje estelar', 120, 14.99, 251),
                                                                                        (nextval('product_seq'), 'Novela romántica bestseller', 'Amor en París', 90, 12.99, 251),
                                                                                        (nextval('product_seq'), 'Manual de programación en Java', 'Java Avanzado', 60, 34.99, 251);

-- Categoría 7: Deportes (id = 301)
insert into product (id, description, name, available_quantity, price, category_id) values
                                                                                        (nextval('product_seq'), 'Balón de fútbol profesional talla 5', 'Balón Pro', 80, 29.99, 301),
                                                                                        (nextval('product_seq'), 'Zapatillas running con amortiguación', 'RunFast 2.0', 140, 89.99, 301),
                                                                                        (nextval('product_seq'), 'Pesas ajustables 20kg', 'Set Pesas', 30, 119.99, 301);

-- Categoría 8: Belleza (id = 351)
insert into product (id, description, name, available_quantity, price, category_id) values
                                                                                        (nextval('product_seq'), 'Crema hidratante con aloe vera 200ml', 'Crema Hidratante', 200, 7.49, 351),
                                                                                        (nextval('product_seq'), 'Perfume floral para mujer 100ml', 'Perfume Rose', 50, 49.99, 351),
                                                                                        (nextval('product_seq'), 'Champú nutritivo con keratina 400ml', 'Champú Keratina', 180, 5.99, 351);

-- Categoría 9: Electrodomésticos (id = 401)
insert into product (id, description, name, available_quantity, price, category_id) values
                                                                                        (nextval('product_seq'), 'Batidora de vaso de 1.5L', 'Batidora TurboMix', 40, 59.99, 401),
                                                                                        (nextval('product_seq'), 'Cafetera espresso automática', 'Cafetera Barista', 25, 199.99, 401),
                                                                                        (nextval('product_seq'), 'Aspiradora sin cable con filtro HEPA', 'Aspiradora PowerClean', 30, 149.99, 401);

-- Categoría 10: Herramientas (id = 451)
insert into product (id, description, name, available_quantity, price, category_id) values
                                                                                        (nextval('product_seq'), 'Taladro eléctrico inalámbrico 18V', 'Taladro PowerMax', 25, 89.99, 451),
                                                                                        (nextval('product_seq'), 'Juego de destornilladores de precisión', 'Set Destornilladores', 150, 19.99, 451),
                                                                                        (nextval('product_seq'), 'Caja de herramientas completa 100 piezas', 'Toolbox Master', 10, 129.99, 451);
