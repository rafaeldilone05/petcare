/*** 
Base de datos para la gestión de una veterinaria.
MySQL 5.7
Código para inserción de datos en las tablas.
***/
use petcare;
/*** Volcado de datos en tabla personas***/
INSERT INTO personas (nombre, telefono, direccion, correo) VALUES
('Juan Antonio Castro', '(809) 414-2312', 'C. Primera, No. 22, Santo Domingo', 'ja@castro.com'),
('Miguelina Alduey', '(849) 378-8514', 'C. Benavente, No. 86, Villa Mella, SDN', 'm@alduey.com'),
('Carlos Moreno', '(829) 315-4412', 'C. Los Héroes, No. 115, Ens. La Fe, DN', 'c@moreno.com'),
('Estefany Fernández', '(809) 878-4415', 'C. Valiente, No. 14, Los Mina, SDE', 'e@fernandez.com'),
('Vicente Puello', '(809) 998-7023', 'C. Los Perales, No. 50, El Farolito, SDE', 'v@puello.com'),
('Sandra Batista', '(809) 487-1254', 'Av. Duarte, No. 85, Villa María, DN', 's@batista.com'),
('Miguel Lorenzo', '(829) 488-0715', 'C. Mougly, No. 114, Los Mina, SDE', 'm@lorenzo.com'),
('Alexandra Santos', '(849) 248-8578', 'C. Principal, No. 12, Vista Hermosa, SDN', 'a@santos.com'),
('Sebastián Castillo', '(809) 370-7589', 'C. Segunda, No. 54, Los Edenes, SDE', 's@castillo.com'),
('Nikaury Taveras', '(829) 655-0878', 'Av. Medrano, No. 14, Villa Mella, SDN', 'n@taveras.com');

/*** Volcado de datos en tabla mascotas***/
INSERT INTO mascotas (codigo, nombre, tipo, edad, color, id_persona) VALUES
('M03','Misifú','Gato Danés',2,'Negro',3),
('B04','Bobby','Chihuahua',1,'Blanco',4),
('P07','Pelusa','Gasto Persa',1,'Mixto',7),
('P09','Perla','Gato Siamés ',3,'Blanco',4),
('N02','Nieve','Golden Retriever',5,'Blanco',2),
('E03','Estrella','Chihuahua',2,'Amarillo',3),
('M05','Missie','Gato Ragdoll',3,'Blanco',5),
('L06','Liebre','Terrier',4,'Marrón',6),
('C01','Cometa','Dálmata',6,'Mixto',1),
('T10','Terry','Bulldog',5,'Negro',10),
('N09','Némesis','Gato Siamés',2,'Negro',9),
('B08','Breezy','Terrier',3,'Mixto',8),
('S05','Sassy','Gato Ragdoll',2,'Blanco',5),
('N06','Nelson','Bulldog',3,'Negro',6);

/*** Volcado de datos en tabla citas***/
INSERT INTO citas (dia, hora, status, motivo, id_mascota) VALUES
('Lunes','14:30:00','Abierta','Rutina',3),
('Martes','15:45:00','Abierta','Rutina',1),
('Lunes','16:15:00','Abierta','Análisis',5),
('Miércoles','16:00:00','Abierta','Vacuna',7),
('Miércoles','13:30:00','Abierta','Rutina',9),
('Jueves','17:15:00','Abierta','Rutina',1),
('Lunes','15:15:00','Abierta','Rutina',2),
('Jueves','14:15:00','Abierta','Rutina',6),
('Viernes','14:30:00','Abierta','Análisis',4),
('Jueves','18:15:00','Abierta','Rutina',3),
('Viernes','15:45:00','Abierta','Rutina',10),
('Martes','16:15:00','Abierta','Rutina',8),
('Martes','17:45:00','Abierta','Rutina',2);

/*** Volcado de datos en tabla consultas***/
INSERT INTO consultas (duracion, observaciones, costo, estado_pago, id_cita) VALUES
('00:45:00','Ninguna', 1500,'Pendiente',1),
('00:30:00','Satisfactorio', 1000,'Pendiente',10),
('00:50:00','Realizar análisis', 1900,'Pagado',2),
('00:45:00','Satisfactorio', 1500,'Pendiente',9),
('00:30:00','Satisfactorio', 1000,'Pendiente',3),
('00:45:00','Vacuna necesaria', 1500,'Pagado',8),
('00:40:00','Vacuna necesaria', 1450,'Pendiente',4),
('00:30:00','Satisfactorio', 1000,'Pagado',7),
('00:50:00','Realizar análisis', 1900,'Pendiente',5),
('00:25:00','Visita de rutina', 850,'Pagado',6),
('00:45:00','Realizar análisis', 1500,'Pendiente',11),
('00:40:00','Requiere otra consulta', 1400,'Pagado',12);


/*** Volcado de datos en tabla productos***/
INSERT INTO productos (cant_vacuna, cost_vacuna, cant_medicamento, cost_medicamento, id_consulta) VALUES
(2, 500, 4, 1240, 3),
(1, 300, 3, 830, 2),
(2, 550, 2, 500, 4),
(1, 250, 6, 1580, 1),
(1, 320, 3, 1150, 7),
(1, 300, 3, 830, 6),
(3, 700, 6, 1330, 8),
(2, 480, 3, 1420, 10),
(1, 250, 8, 2100, 5),
(1, 275, 4, 1500, 9)