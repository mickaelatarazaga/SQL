
/*Cree una tabla llamada CURSO con los atributos:
Código de curso (clave primaria, entero no nulo)
Nombre (varchar no nulo)
Descripcion (varcha)
Turno (varchar no nulo)
Agregue un campo “cupo” de tipo numérico*/
DROP DATABASE IF EXISTS ALKEMY;
CREATE DATABASE ALKEMY;
CREATE TABLE CURSO (
codigo INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(45) NOT NULL,
descripcion VARCHAR(45),
cupo INT,
PRIMARY KEY (codigo));
/*Inserte datos en la tabla:
(101, “Algoritmos”,”Algoritmos y Estructuras de Datos”,”Mañana”,35)
(102, “Matemática Discreta”,””,”Tarde”,30)*/
INSERT INTO CURSO VALUES (101 , "Algoritmos", "Algoritmos y Estructuras de Datos", 35);
INSERT INTO CURSO VALUES (102 , "Matemática Discreta", "Algoritmos y Estructuras de Datos", 30);
/*Intente ingresar un registro con el nombre nulo y verifique que no funciona.
Intente ingresar un registro con la clave primaria repetida y verifique que no funciona.
Actualice, para todos los cursos, el cupo en 25.
Elimine el curso Algoritmos.*/
INSERT INTO CURSO VALUES (103 , NULL, "Ciencias de datos", 35);
INSERT INTO CURSO VALUES (102 , "Programación I", "Algoritmos y Estructuras de Datos", 30);
UPDATE CURSO SET cupo = 25 ;
DELETE FROM CURSO WHERE codigo=101;