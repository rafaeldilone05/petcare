/*** 
Base de datos para la gestión de una veterinaria.
MySQL 5.7
Código para la recuperación de datos
***/
use petcare;
/*** Obteniendo todas las personas ***/
SELECT * FROM personas;


/*** Obteniendo todas las mascotas ***/
SELECT * FROM mascotas;


/*** Obteniendo todas las citas ***/
SELECT * FROM citas;

/*** Obteniendo todas las consultas ***/
SELECT * FROM consultas;

/*** Obteniendo todas los personas productos***/
SELECT * FROM productos;


/*** Consulta Relacional ***/
SELECT m.nombre as Mascota, p.nombre as Dueño, CONCAT(ci.dia,' ' ,ci.hora) as Día,
c.observaciones as Observ, ci.motivo as Motivo, c.costo+pr.cost_vacuna+pr.cost_medicamento as Costo,
c.estado_pago as Estado FROM citas ci LEFT JOIN mascotas m on ci.id_mascota=m.id 
LEFT JOIN personas p on m.id_persona=p.id LEFT JOIN consultas c on c.id_cita=ci.id
LEFT JOIN productos pr on pr.id_consulta=c.id;