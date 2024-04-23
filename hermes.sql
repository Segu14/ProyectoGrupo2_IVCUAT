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
('Maquillaje', true),
('Higiene', true),
('Candelas', true),
('Repelente', false);


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

select * from hermes.categoria;