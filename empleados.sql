-- TP_Database_Empleados --
-- Alumna: Rocio Ruperto --

use pwi;
SELECT * FROM pwi.empleados;

create table empleados(
id_emp int unsigned not null auto_increment primary key,
nombre varchar(50) not null,
apellido varchar(50) not null,
trabajo varchar(50) not null,
edad smallint,
salario varchar(20),
mail varchar(50)
);

insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values 
(null, "Juan", "Hagan", "Programador Senior", 32, 1200, "juan_hagan@bignet.com"),
(null, "Gonzalo", "Pillai", "Programador Senior", 32, 1100, "g_pillai@bignet.com"), 
(null, "Ana", "Dharma", "Desarrollador web", 27, 900, "ana@bignet.com"),
(null, "Maria", "Anchor", "Desarrollador web", 26, 850, "mary@bignet.com"),
(null, "Alfred", "Fernandez", "Programador", 31, 750, "af@bignet.com"), 
(null, "Juan", "Aguero", "Programador", 36, 850, "juan@bignet.com"),
(null, "Eduardo", "Sacan", "Programador", 25, 850, "eddie@bignet.com"),
(null, "Alejandro", "Nanda", "Programador", 32, 700, "alenanda@bignet.com"), 
(null, "Hernan", "Rosso", "Especialista multimedia", 33, 900, "hernan@bignet.com"),
(null, "Pablo", "Simon", "Especialista multimedia", 43, 850, "ps@bignet.com"),
(null, "Artuno", "Hernandez", "Especialista multimedia", 32, 750, "arturo@bignet.com"), 
(null, "Jimena", "Cazado", "Diseniador web", 35, 1100, "jimena@bignet.com"),
(null, "Roberto", "Luis", "Administrador de sistemas", 34, 1000, "roberto@bignet.com"),
(null, "Daniel", "Gutierrez", "Administrador de sistemas", 36, 9000, "daniel@bignet.com"), 
(null, "Miguel", "Harper", "Ejecutivo de ventas Senior", 30, 1200, "miguel@bignet.com"),
(null, "Monica", "Sanchez", "Ejecutivo de ventas", 27, 900, "monica@bignet.com"),
(null, "Alicia", "Simlai", "Ejecutivo de ventas", 27, 700, "alicia@bignet.com"), 
(null, "Jose", "Iriarte", "Ejecutivo de ventas", 32, 720, "jose@bignet.com"),
(null, "Sabrina", "Allende", "Gerente de soporte tecnico", 36, 2000, "sabrina@bignet.com"), 
(null, "Pedro", "Campeon", "Gerente de finanzas", 28, 2200, "pedro@bignet.com"),
(null, "Mariano", "Dharma", "Presidente", "28", 3000, "mariano@bignet.com");

-- ¿Cuales son los nombres y la ocupación de cada uno de los empleados? --
select nombre, trabajo from empleados;
-- ¿Cuál es el nombre y la edad de cada uno de los empleados? --
select nombre, edad from empleados;
-- ¿Cuál es el nombre y la edad de todos los programadores? --
select nombre, edad, trabajo from empleados where trabajo like '%Programador%';
select nombre, edad, trabajo from empleados where trabajo = 'Programador';
-- ¿Cuáles son los empleados de mas de 30 años? --
select nombre, edad from empleados where edad > 30;
-- ¿Cuál es el apellido y el mail de los empleados llamados Juan? -- 
select nombre, apellido, mail from empleados where nombre = 'Juan';
-- ¿Cuál es el nombre de las personas que trabajan como Programadores o Desarrolladores Web? -- 
select nombre, trabajo from empleados where trabajo = 'Programador' or trabajo = 'Desarrollador Web'; 
-- Mostrar una lista (nro_emp, nombre, apellido, trabajo) las personas cuyo numero de empleado esté entre 15 y 20 -- 
select id_emp, nombre, apellido, trabajo from empleados where id_emp between 15 and 20;
-- ¿Cuáles son los Programadores que ganan menos de $800? -- 
select * from empleados where salario < 800;
-- ¿Cuáles son los Programadores que ganan entre $750 y $900? -- 
select * from empleados where salario between 750 and 900;
-- ¿Cuáles son los trabajadores cuyo apellido comienza con s? -- 
select * from empleados where apellido like 's%';
-- ¿Cuáles son los trabajadores cuyo nombre termina en l? -- 
select * from empleados where nombre like '%l';
-- Agregar un empleado con ID_empleado 22 con los siguientes datos: Francisco Perez, Programador, 26 años, salario 900, mail: francisco@bignet.com -- 
insert into empleados (id_emp, nombre, apellido, trabajo, edad, salario, mail) values 
(null, "Francisco", "Perez", "Programador", 26, 900, "francisco@bignet.com");
-- Borrar los datos de Hernan Rosso -- 
delete from empleados where apellido = "Rosso";
-- Modificar los datos de Daniel Gutierrez, salario 900.-- 
update empleados set salario = 900 where nombre = 'Daniel';