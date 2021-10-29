DROP DATABASE IF EXISTS 'notas_db';
CREATE DATABASE 'notas_db';
USE 'notas_db';

DROP TABLE IF EXISTS 'usuarios';
create table 'usuarios' (
	'id' INT unsigned primary key auto_increment,
	'nombre' TEXT not null,
	'email' TEXT not null
);

DROP TABLE IF EXISTS 'notas';
create table 'notas' (
	'id' INT unsigned primary key AUTO_INCREMENT,
	'titulo' VARCHAR(100) not null
	'creador'_id int unsigned not null,
	'fecha_creacion' timestamp NULL DEFAULT NULL,
	'ultima_mod' timestamp NULL DEFAULT NULL,
	'descripcion' text not null,
	'borrable' int not null,
	foreign key(creador_id) references usuarios(id)
);

DROP TABLE IF EXISTS 'categorias';
create table 'categorias' (
	'id' INT unsigned primary key AUTO_INCREMENT,
	'nombre' varchar(50) not null
);

DROP TABLE IF EXISTS 'notas-categorias';
create table 'notas-categorias' (
	'nota_id' int unsigned not null,
	'categoria_id' int unsigned not null,
	foreign key('nota_id') references notas('id'),
	foreign key('categoria_id') references categorias('id')
);

insert into usuarios values
(DEFAULT,'Agustin','agustin@gmail.com'),
(DEFAULT,'Pedro','pedro@gmail.com'),
(DEFAULT,'Juan','juan@gmail.com'),
(DEFAULT,'Julian','julian@gmail.com'),
(DEFAULT,'Tomas','tomas@gmail.com'),
(DEFAULT,'Ludmila','ludmila@gmail.com'),
(DEFAULT,'Florencia','florencia@gmail.com'),
(DEFAULT,'Sofía','sofia@gmail.com'),
(DEFAULT,'Camila','camila@gmail.com'),
(DEFAULT,'Iara','iara@gmail.com')

insert into categorias values
(DEFAULT,'Ocio'),
(DEFAULT,'Trabajo'),
(DEFAULT,'Estudio'),
(DEFAULT,'Programacion'),
(DEFAULT,'Finanzas'),
(DEFAULT,'Salud'),
(DEFAULT,'Compras'),
(DEFAULT,'Recordatorios'),
(DEFAULT,'Apuntes'),
(DEFAULT,'Casa');

insert into notas values
(DEFAULT,'Lista Compras Verduleria','7','21/10/2021','21/10/2021 17:35:00','Tomate - Lechuga - Cebolla - Naranja','1'),
(DEFAULT,'Compras Finde','7','21/10/2021','21/10/2021 17:30:00','Armar Lista de compras para el fin de semana','1'),
(DEFAULT,'Notas Programación','5','23/10/2021','25/10/2021 12:30:00','Hacer desafio de SQL','1'),
(DEFAULT,'Reunión Consultora','5','25/10/2021','25/10/2021 09:30:00','Averiguar desafios entrevista','1'),
(DEFAULT,'Monotributo','3','24/10/2021','24/10/2021 11:30:00','Pagar monotributo','0'),
(DEFAULT,'Alquiler','3','24/10/2021','24/10/2021 17:30:00','Llevar adelanto alquiler diciembre','0'),
(DEFAULT,'Documentación facu','2','23/10/2021','23/10/2021 17:30:00','Preparar documentación solicitada via mail','1'),
(DEFAULT,'Cobro clases','2','23/10/2021','24/10/2021 17:33:00','Recordar pago a alumno','1'),
(DEFAULT,'Picada para el sabado','1','22/10/2021','22/10/2021 17:36:00','Consultar en Pedidos Ya','1'),
(DEFAULT,'Pedir turno para kinesio','1','22/10/2021','22/10/2021 17:35:00','Llamar a centro KinesioFit','1');

insert into nota-categoias values
('1','7'),
('2','8'),
('3','4'),
('4','2'),
('5','5'),
('6','10'),
('7','3'),
('8','6'),
('9','8'),
('10','6');

