/*** 
Base de datos para la gestión de una veterinaria.
MySQL 5.7
Código para la creación de la estructura
***/


/***
Nombre: Rafael Onil Dilone Reyes 
Matrícula: 21-EIIN-1-007


***/
DROP  database IF EXISTS petcare;
create schema petcare;
use petcare;

/*** Creación tabla de personas (dueños de mascotas)***/
CREATE TABLE `personas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nombre` TEXT NOT NULL,
	`telefono` TEXT NOT NULL,
	`direccion` TEXT NOT NULL,
	`correo` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

/*** Creación tabla de mascotas (pacientes de la veterinaria)***/
CREATE TABLE `mascotas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
    `codigo` TEXT NOT NULL,
	`nombre` TEXT NOT NULL,
	`tipo` TEXT NOT NULL,
    `edad` INT NOT NULL,
    `color` TEXT NOT NULL,
	`id_persona` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

/*** Creación tabla de citas (visitas programadas)***/
CREATE TABLE `citas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`dia` TEXT NOT NULL,
	`hora` TIME NOT NULL,
	`status` TEXT NOT NULL,
	`motivo` TEXT NOT NULL,
	`id_mascota` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

/*** Creación tabla de consultas (Cuando se atiende a la mascota)***/
CREATE TABLE `consultas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`duracion` TIME NOT NULL,
	`observaciones` TEXT NOT NULL,
	`costo` DECIMAL NOT NULL,
	`estado_pago` TEXT NOT NULL,
	`id_cita` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

/*** Creación tabla de productos (Lo que se provee en una consulta)***/
CREATE TABLE `productos` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`cant_vacuna` INT NOT NULL,
	`cost_vacuna` DECIMAL NOT NULL,
	`cant_medicamento` INT NOT NULL,
	`cost_medicamento` DECIMAL NOT NULL,
	`id_consulta` bigint NOT NULL,
	PRIMARY KEY (`id`)
);


/*** Asignación de llaves foráneas***/
ALTER TABLE `mascotas` ADD CONSTRAINT `mascotas_fk0` 
FOREIGN KEY (`id_persona`) REFERENCES `personas`(`id`);
ALTER TABLE `citas` ADD CONSTRAINT `citas_fk0` 
FOREIGN KEY (`id_mascota`) REFERENCES `mascotas`(`id`);
ALTER TABLE `consultas` ADD CONSTRAINT `consultas_fk0` 
FOREIGN KEY (`id_cita`) REFERENCES `citas`(`id`);
ALTER TABLE `productos` ADD CONSTRAINT `productos_fk0`
 FOREIGN KEY (`id_consulta`) REFERENCES `consultas`(`id`);
 
 
 


