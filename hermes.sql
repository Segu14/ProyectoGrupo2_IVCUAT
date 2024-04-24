/*Se crea la base de datos */
drop database if exists hermes;
CREATE database hermes ;

create table hermes.categoria (
  id_categoria INT NOT NULL AUTO_INCREMENT,
  nombre_categoria VARCHAR(60) NOT NULL,
  activo bool,
  PRIMARY KEY (id_categoria))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO hermes.categoria (nombre_categoria, activo) VALUES
('Higiene Personal', true),
('Maquillaje', true),
('Cuidado Hogar', true),
('Ropa', true),
('Repelente', false),
('Candelas', true);


create table hermes.producto (
  id_producto INT NOT NULL AUTO_INCREMENT,
  id_categoria INT NOT NULL,
  nombre_producto VARCHAR(90) NOT NULL,  
  detalle VARCHAR(1600) NOT NULL, 
  precio double,
  existencias int,  
  ruta_imagen varchar(1024),
  activo bool,
  PRIMARY KEY (id_producto),
  foreign key fk_producto_categoria (id_categoria) references categoria(id_categoria)  
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- Insertar productos en la tabla producto
INSERT INTO hermes.producto (id_categoria, nombre_producto, detalle, precio, existencias, ruta_imagen, activo) VALUES
-- Higiene Personal
(1, 'Garnier Shampoo Aguacate', 'Shampoo nutritivo con extracto de aguacate', 6.95, 120, 'https://walmartcr.vtexassets.com/arquivos/ids/336554/Shampoo-Hair-Food-De-Nutrici-n-Garnier-Fructis-Aguacate-300ml-2-55874.jpg?v=637974381851070000', TRUE),
(1, 'Garnier Shampoo Sandía', 'Shampoo revitalizante con extracto de sandía', 6.95, 100, 'https://walmartcr.vtexassets.com/arquivos/ids/336844/Hair-Food-Shampoo-Garnier-Fructis-Sand-a-Revitalizante-300ml-2-75348.jpg?v=637974383583300000', TRUE),
(1, 'Garnier Shampoo Coco', 'Shampoo reparador con aceite de coco', 6.95, 100, 'https://walmartcr.vtexassets.com/arquivos/ids/336564/Hair-Food-Shampoo-De-Reparaci-n-Garnier-Fructis-Coco-300ml-2-55880.jpg?v=637974381885000000', TRUE),
(1, 'Garnier Acondicionador Banana', 'Acondicionador fortificante con extracto de banana', 7.45, 85, 'https://walmartcr.vtexassets.com/arquivos/ids/336557/Hair-Food-Acondicionador-De-Fuerza-Garnier-Fructis-Banana-300ml-2-55876.jpg?v=637974381860600000', TRUE),
(1, 'Garnier Acondicionador Manteca Cacao', 'Acondicionador hidratante con manteca de cacao', 7.45, 90, 'https://walmartcr.vtexassets.com/arquivos/ids/410520/Acondiconador-Cocoa-Marca-Hair-Food-300ml-2-85284.jpg?v=638216193735370000', TRUE),
(1, 'Herbal Essences Shampoo Mandarina', 'Shampoo refrescante con aroma de mandarina', 8.50, 110, 'https://walmartcr.vtexassets.com/arquivos/ids/582952/Shampoo-Herbal-Essences-Frescura-Mandarina-Jengibre-Menta-400-ml-1-80424.jpg?v=638478749372000000', TRUE),
(1, 'Herbal Essences Acondicionador Agua Coco & Jazmin', 'Acondicionador hidratante con agua de coco y jazmín', 8.50, 110, 'https://walmartcr.vtexassets.com/arquivos/ids/578405/Acondicionador-Herbal-Essences-Hidrata-Agua-De-Coco-Jazm-n-400-ml-1-80429.jpg?v=638476907727500000', TRUE),
(1, 'Herbal Essences Mascara Reconstructora', 'Máscara capilar reconstructora con aceite de argán', 9.00, 95, 'https://www.maicao.cl/dw/image/v2/BDPM_PRD/on/demandware.static/-/Sites-masterCatalog_Chile/default/dwb2e72e5a/images/large/383427-5-mascarilla-intensiva-reconstructora-argan-oil-morocco-300ml.jpg?sw=1000&sh=1000', TRUE),
(1, 'Herbal Essences Shampoo Body Naranja', 'Shampoo energizante con esencia de naranja', 8.50, 110, 'https://m.media-amazon.com/images/I/81Ck8k7Q4zL.jpg', TRUE),
(1, 'Dove Crema Corporal', 'Crema corporal nutritiva y suavizante', 5.75, 150, 'https://assets.unileversolutions.com/v1/81587884.jpg', TRUE),
(1, 'Dove Jabon para la Cara', 'Jabón facial suave con hidratantes', 3.99, 190, 'https://assets.unileversolutions.com/v1/97054200.jpg', TRUE),
(1, 'Grisi Jabon para la Cara avena', 'Jabón facial de avena para piel sensible', 4.25, 175, 'https://i5.walmartimages.com.mx/gr/images/product-images/img_large/00750102215080L.jpg', TRUE),
(1, 'Secret Desodorante Coco', 'Desodorante antitranspirante con aroma a coco', 4.50, 160, 'https://walmartcr.vtexassets.com/arquivos/ids/491195/Desodorante-Secret-Antitranspirante-En-Barra-Invisible-Coco-45g-1-91437.jpg?v=638394072691470000', TRUE),
(1, 'Secret Desodorante Vainilla', 'Desodorante antitranspirante con aroma a vainilla', 4.50, 160, 'https://walmartcr.vtexassets.com/arquivos/ids/403384/Antitranspirante-Marca-Secret-Vainilla-Barra-Invisible-45-g-3-77529.jpg?v=638198702130900000', TRUE),

-- Maquillaje
(2, 'Bodyography Labial', 'Labial enriquecido con vitamina E para un acabado suave y duradero', 12.99, 80, 'https://media.nidux.net/pull/850/1000/13709/13-product-5f76cdf79c633-fabrictexturelipstick-open-flannel-wswatch-web-1024x1024.jpg', TRUE),
(2, 'Bodyography Blush', 'Blush mineral de larga duración para mejillas', 13.50, 75, 'https://i.ebayimg.com/thumbs/images/g/magAAOSwmvRhcGWG/s-l640.jpg', TRUE),
(2, 'Bodyography Sombra de Ojos Trio', 'Trio de sombras de ojos con pigmentos intensos y duraderos', 15.00, 60, 'https://i.ebayimg.com/thumbs/images/g/QoEAAOSwt9BhcZgo/s-l640.jpg', TRUE),
(2, 'Bodyograpgy Base Natural 160', 'Base de maquillaje ligera con tono natural', 20.00, 50, 'https://media.nidux.net/pull/850/1000/13709/35-product-5fa31281ae4a4-foundation-160-swatch-web-1024x1024.jpg', TRUE),
(2, 'Bodyograpgy Base Natural 300', 'Base de maquillaje fluida para un acabado perfecto', 20.00, 50, 'https://www.gurumakeupemporium.com/cdn/shop/products/bodyography-natural-finish-foundation-p4025-19340_image_800x.jpg?v=1664361854', TRUE),
(2, 'Bodyography Base Porcelana', 'Base de maquillaje ligera con acabado porcelana', 22.00, 50, 'https://www.bodyography.com/cdn/shop/products/ProPerfect_7201_Porcelain_wSwatch_web.jpg?v=1597958410', TRUE),
(2, 'Bodyography Base Chai', 'Base de maquillaje en tono chai para cobertura media', 22.00, 50, 'https://www.bodyography.com/cdn/shop/products/ProPerfect_7201_Chai_wSwatch_web_grande.jpg?v=1597958510', TRUE),
(2, 'Covergirl Base Liquida M6', 'Base líquida ligera para un tono de piel uniforme', 18.00, 70, 'https://walmartcr.vtexassets.com/arquivos/ids/279113/Base-Liq-Covergirl-Trub-Cl-Beig-L90-30Ml-1-48156.jpg?v=637780414023400000', TRUE),
(2, 'Covergirl Oil Control', 'Base para control de brillo y aceite en la piel', 18.00, 70, 'https://walmartcr.vtexassets.com/arquivos/ids/364143/Cover-Girl-Clean-Oil-Control-Creamy-1-37414.jpg?v=638048579584800000', TRUE),
(2, 'Covergirl Delineador', 'Delineador líquido de alta precisión y duración', 9.75, 90, 'https://m.media-amazon.com/images/I/51pg7MMTi4L.jpg', TRUE),

-- Cuidado Hogar
(3, 'CleanWell Desinfectante Citrico', 'Desinfectante natural con aroma cítrico, sin químicos agresivos', 4.99, 150, 'https://m.media-amazon.com/images/I/61L9u6FACwS.jpg', TRUE),
(3, 'CleanWell Toallas Desinfectantes', 'Toallas desinfectantes ecológicas, eficaces contra germenes', 5.99, 150, 'https://m.media-amazon.com/images/I/61WpREk8uJS.jpg', TRUE),
(3, 'Aleva Naturals Liquido Hipoalergico', 'Líquido de limpieza hipoalergénico para superficies y juguetes', 7.99, 100, 'https://m.media-amazon.com/images/I/411cXFf38nL.jpg', TRUE),
(3, 'Biobel Detergente con Jabon 1L', 'Detergente ecológico con jabón natural, 1L', 11.00, 80, 'https://biobel.es/wp2020/wp-content/uploads/2019/05/Biobel-Detergente-15L_delantera-570x570.jpg', TRUE),
(3, 'Biobel Detergente con Jabon 3L', 'Detergente ecológico con jabón natural, 3L', 20.00, 50, 'https://biobel.es/wp2020/wp-content/uploads/2020/07/Biobel-Detergente-5L-1-570x570.jpg', TRUE),
(3, 'Biobel Limpiahogar', 'Limpiahogar ecológico y biodegradable', 9.50, 100, 'https://meetbio.es/wp-content/uploads/2021/08/meetbio-biobel-limpiahogar-1.jpg', TRUE),
(3, 'Planet Pure Detergente Ropa', 'Detergente natural para ropa con aroma de flor de naranjo', 12.99, 75, 'https://shop14445.sfstatic.io/upload_dir/shop/product-images/rengoering/_thumbs/PlanetPure_vaskemiddel_orangeblossom_3L.12403.w610.h610.fill.jpg', TRUE),

-- Ropa
(4, 'Capitán Denim Camisa Mujer', 'Camisa de verano estampada para mujer', 35.00, 50, 'https://cdn.shopify.com/s/files/1/0553/2372/1857/files/camisa-estampada-de-mujer-de-verano.jpg?crop=center&height=1949&v=1711639588&width=1500', TRUE),
(4, 'Capitán Denim Camisa Hombre', 'Camisa de verano ligera para hombre', 34.00, 50, 'https://capitandenim.com/cdn/shop/files/camisa-de-hombre-para-verano_2eb83fe6-6521-448d-9ffb-74bbd22e2787.jpg?v=1711642291', TRUE),
(4, 'Capitán Denim Pantalones Mujer', 'Pantalones cargo sostenibles para mujer', 40.00, 40, 'https://capitandenim.com/cdn/shop/files/pantalones-cargo-de-mujer-sostenible.jpg?v=1701099010', TRUE),
(4, 'Capitán Denim Pantalones Hombre', 'Pantalón sostenible y cómodo para hombre', 40.00, 40, 'https://capitandenim.com/cdn/shop/files/pantalon-de-hombre-hecho-en-espana.jpg?v=1706800685', TRUE),
(4, 'Capitán Denim Overol Mujer', 'Overol vaquero cómodo para mujer', 45.00, 35, 'https://capitandenim.com/cdn/shop/files/peto-vaquero-de-mujer-comodo-hecho-en-espana_1500x1500.jpg?v=1707318082', TRUE),
(4, 'Capitán Denim Abrigo Hombre', 'Abrigo elegante y cálido para hombre', 55.00, 30, 'https://i.pinimg.com/originals/49/27/e6/4927e65cec4320c1ff6e98e26385d149.jpg', TRUE),

-- Candelas
(6, 'Rewined Candela Cabernet', 'Candela aromática con notas de vino cabernet', 19.95, 70, 'https://www.rewinedcandles.com/cdn/shop/files/Rewined_Cabernet_01_6c2acf8a-3714-4472-bafb-f96d0df41a92_800x.jpg?v=1666628064', TRUE),
(6, 'Rewined Candela Crush', 'Candela con aroma dulce y afrutado', 19.95, 70, 'https://www.rewinedcandles.com/cdn/shop/files/Rewined_Crush_01_800x.jpg?v=1666628017', TRUE),
(6, 'Rewined Candela Bordeaux', 'Candela con aroma intenso de vino Bordeaux', 19.95, 70, 'https://www.rewinedcandles.com/cdn/shop/files/Rewined_Bordeaux_01_800x.jpg?v=1666627967', TRUE),
(6, 'Rewined Candela Cosmopilitan', 'Candela con aroma a coctel cosmopolitan', 19.95, 70, 'https://www.rewinedcandles.com/cdn/shop/files/Rewined_Cosmopolitan_02_656f0571-02fb-4994-9d15-cf9c3b3e48d6_800x.jpg?v=1666627887', TRUE),
(6, 'Rewined Candela Gin Fizz', 'Candela con aroma refrescante de gin fizz', 19.95, 70, 'https://www.rewinedcandles.com/cdn/shop/files/Rewined_GinFizz_01_800x.jpg?v=1666627886', TRUE),
(6, 'Rewined Candela Mimosa', 'Candela con aroma a mimosa cítrica', 19.95, 70, 'https://www.rewinedcandles.com/cdn/shop/files/Rewined_Mimosa_01_800x.jpg?v=1666628034', TRUE);

-- Fin de la inserción


CREATE TABLE hermes.usuario (
  id_usuario INT NOT NULL AUTO_INCREMENT,
  username varchar(20) NOT NULL,
  password varchar(512) NOT NULL,
  nombre VARCHAR(20) NOT NULL,
  apellidos VARCHAR(90) NOT NULL,
  telefono VARCHAR(15) NULL,
  activo boolean,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO hermes.usuario(username, password, nombre, apellidos, telefono, activo) VALUES
('sebastian', '$2a$10$cLmB2SAmuMUCyM1JHy.ELu.h2IWWR5/J9tRq9rXHq.CLiwvvHPT0e', 'Sebastian', 'Segura Sáenz', '60171212', true), /* psswd: sebas */
('roger', '$2a$10$WEVngNEmBs32INoYcT8jkOT9ESLr/vH8sEcLEKQbnyKGT69cmP1ya', 'Roger', 'Pereira Sanchez', '72007283', true), /* psswd: roger */
('alex', '$2a$10$ezIcaGfDfg9XbiE6vboCn.FE6oEzgtlXfZb3j1ZpLQ9qRDkBoEUty', 'Alex', 'Monge Arias', '85040993', true); /* psswd: alex */

create table hermes.rol (
  id_rol INT NOT NULL AUTO_INCREMENT,
  nombre varchar(20),
  id_usuario int,
  PRIMARY KEY (id_rol),
  foreign key fk_rol_usuario (id_usuario) references usuario(id_usuario)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO hermes.rol (id_rol, nombre, id_usuario) values
 (1,'ROLE_ADMIN',1), (2,'ROLE_VENDEDOR',1), (3,'ROLE_USER',1),
 (4,'ROLE_VENDEDOR',2), (5,'ROLE_USER',2),
 (6,'ROLE_USER',3);


create table hermes.factura (
  id_factura INT NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  fecha date,  
  total double,
  estado int,
  PRIMARY KEY (id_factura),
  foreign key fk_factura_usuario (id_usuario) references usuario(id_usuario)  
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

create table hermes.venta (
  id_venta INT NOT NULL AUTO_INCREMENT,
  id_factura INT NOT NULL,
  id_producto INT NOT NULL,
  precio double, 
  cantidad int,
  PRIMARY KEY (id_venta),
  foreign key fk_ventas_factura (id_factura) references factura(id_factura),
  foreign key fk_ventas_producto (id_producto) references producto(id_producto) 
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

select * from hermes.categoria;

use hermes;

select * from venta;