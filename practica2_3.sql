-- PRACTICA 2
--INSERCIONES

INSERT INTO DISCOGRAFICA (nombre, telefono, direccion, pais) VALUES ('RCA','123456789','C/RCA sn','Espanya');
INSERT INTO DISCOGRAFICA (nombre, telefono, direccion, pais) VALUES ('Columbia Records','123456789','Street Columbia Records','EEUU');
INSERT INTO DISCOGRAFICA (nombre, telefono, direccion, pais) VALUES ('Capitol Records','123456789','Street Capitol Records','EEUU');
INSERT INTO DISCOGRAFICA (nombre, telefono, direccion, pais) VALUES ('Sony Music','123456789','Street Sony Music Records','EEUU');
INSERT INTO DISCOGRAFICA (nombre, telefono, direccion, pais) VALUES ('Warner Bros. Records','123456789','C/Warner sn','Espanya');
INSERT INTO DISCOGRAFICA (nombre, telefono, direccion, pais) VALUES ('Epic','123456789', 'C/Epic sn','Espanya');

--RADIO
INSERT INTO RADIO (nombre, direccion, web, email, telefono) VALUES ('Radio Vaticano','Direccion Radio Vaticano','https://www.vaticannews.va/es.html','contacto@vaticannews.va','132132113');
INSERT INTO RADIO (nombre, direccion, web, email, telefono) VALUES ('Europa FM','Direccion de Onda Cero','https://www.ondacero.es','contacto@ondacero.es','132132113');
INSERT INTO RADIO (nombre, direccion, web, email, telefono) VALUES ('RNE1','Direccion de RTVE','https://www.rtve.es/rne1','contacto@rtve.es','132132113');
INSERT INTO RADIO (nombre, direccion, web, email, telefono) VALUES ('RNE3','Direccion de RTVE','https://www.rtve.es/rne3','contacto@rtve.es','132132113');
INSERT INTO RADIO (nombre, direccion, web, email, telefono) VALUES ('RNE5','Direccion de RTVE','https://www.rtve.es/rne5','contacto@rtve.es','132132113');
INSERT INTO RADIO (nombre, direccion, web, email, telefono) VALUES ('40 Principales','Direccion de la Cadena SER','https://cadenaser.com','contacto@cadenaser.com','132132113');


--GRUPO
INSERT INTO GRUPO (nombre, anyoFundacion, pais) VALUES ('AC/DC','1973','Australia');
INSERT INTO GRUPO (nombre, anyoFundacion, pais) VALUES ('Radio Futura','1979','Espanya');
INSERT INTO GRUPO (nombre, anyoFundacion, pais) VALUES ('Sidonie','1997','Espanya');
INSERT INTO GRUPO (nombre, anyoFundacion, pais) VALUES ('Queen','1970','Reino Unido');

--VINILO
INSERT INTO VINILO (ISVN, fechaLanzamiento, copiasVendidas, grupo, discografica) VALUES (1000000001,TO_DATE('25-07-1980','DD-MM-YYYY'),200000,'AC/DC','Warner Bros. Records'); -- Back in Black
INSERT INTO VINILO (ISVN, fechaLanzamiento, copiasVendidas, grupo, discografica) VALUES (1000000011,TO_DATE('25-07-1980','DD-MM-YYYY'),500000,'AC/DC','Warner Bros. Records'); -- sencillo Back in Black
INSERT INTO VINILO (ISVN, fechaLanzamiento, copiasVendidas, grupo, discografica) VALUES (2000000001,TO_DATE('01-01-1987','DD-MM-YYYY'),110000, 'Radio Futura','RCA'); -- La Cancion de Juan Perro 
INSERT INTO VINILO (ISVN, fechaLanzamiento, copiasVendidas, grupo, discografica) VALUES (2000000011,TO_DATE('01-01-1987','DD-MM-YYYY'),50000, 'Radio Futura','RCA'); -- Sencillo La Cancion de Juan Perro 
INSERT INTO VINILO (ISVN, fechaLanzamiento, copiasVendidas, grupo, discografica) VALUES (2000000111,TO_DATE('01-01-1987','DD-MM-YYYY'),15000,'Radio Futura','RCA'); -- Maxi 37 Grados
INSERT INTO VINILO (ISVN, fechaLanzamiento, copiasVendidas, grupo, discografica) VALUES (3000000001,TO_DATE('18-10-2011','DD-MM-YYYY'),310000,'Sidonie','Columbia Records'); -- El Fluido Garcia
INSERT INTO VINILO (ISVN, fechaLanzamiento, copiasVendidas, grupo, discografica) VALUES (3000000011,TO_DATE('18-10-2011','DD-MM-YYYY'),500000,'Sidonie','Columbia Records'); -- Sencillo El Fluido Garcia
INSERT INTO VINILO (ISVN, fechaLanzamiento, copiasVendidas, grupo, discografica) VALUES (3000000002,TO_DATE('01-01-2003','DD-MM-YYYY'),410000,'Sidonie','Columbia Records'); -- Shell Kids
INSERT INTO VINILO (ISVN, fechaLanzamiento, copiasVendidas, grupo, discografica) VALUES (3000000012,TO_DATE('01-01-2003','DD-MM-YYYY'),350000,'Sidonie','Columbia Records'); -- Sencillo Shell Kids
INSERT INTO VINILO (ISVN, fechaLanzamiento, copiasVendidas, grupo, discografica) VALUES (5000000001,TO_DATE('21-11-1975','DD-MM-YYYY'),610000,'Queen','Capitol Records'); -- A Night at the Opera
INSERT INTO VINILO (ISVN, fechaLanzamiento, copiasVendidas, grupo, discografica) VALUES (5000000011,TO_DATE('21-11-1975','DD-MM-YYYY'),500000,'Queen','Capitol Records'); -- Sencillo A Night at the Opera
INSERT INTO VINILO (ISVN, fechaLanzamiento, copiasVendidas, grupo, discografica) VALUES (5000000002,TO_DATE('30-06-1980','DD-MM-YYYY'),710000,'Queen','Capitol Records'); -- The Game
INSERT INTO VINILO (ISVN, fechaLanzamiento, copiasVendidas, grupo, discografica) VALUES (5000000012,TO_DATE('30-06-1980','DD-MM-YYYY'),810000,'Queen','Capitol Records'); -- Sencillo The Game
INSERT INTO VINILO (ISVN, fechaLanzamiento, copiasVendidas, grupo, discografica) VALUES (5000000003,TO_DATE('02-06-1986','DD-MM-YYYY'),500000,'Queen','Capitol Records'); -- A Kind of Magic

--LP
INSERT INTO LP (ISVN, titulo, copiasLanzamiento) VALUES (1000000001,'Back in Black',100000);
INSERT INTO LP (ISVN, titulo, copiasLanzamiento) VALUES (2000000001,'La Cancion de Juan Perro',110000);
INSERT INTO LP (ISVN, titulo, copiasLanzamiento) VALUES (3000000001,'El Fluido Garcia',310000);
INSERT INTO LP (ISVN, titulo, copiasLanzamiento) VALUES (3000000002,'Shell Kids',410000);
INSERT INTO LP (ISVN, titulo, copiasLanzamiento) VALUES (5000000001,'A Night at the Opera',610000);
INSERT INTO LP (ISVN, titulo, copiasLanzamiento) VALUES (5000000002,'The Game',710000);
INSERT INTO LP (ISVN, titulo, copiasLanzamiento) VALUES (5000000003,'A Kind of Magic',810000);


--SENCILLO 

INSERT INTO SENCILLO (ISVN, ISVNLP) VALUES (1000000011,1000000001);
INSERT INTO SENCILLO (ISVN, ISVNLP) VALUES (2000000011,2000000001);
INSERT INTO SENCILLO (ISVN, ISVNLP) VALUES (2000000111,2000000001);
INSERT INTO SENCILLO (ISVN, ISVNLP) VALUES (3000000011,3000000001);
INSERT INTO SENCILLO (ISVN, ISVNLP) VALUES (3000000012,3000000002);
INSERT INTO SENCILLO (ISVN, ISVNLP) VALUES (5000000011,5000000001);
INSERT INTO SENCILLO (ISVN, ISVNLP) VALUES (5000000012,5000000002);

--TEMA
INSERT INTO TEMA (codigo, titulo, duracion,autor, LP, caraLP, pistaLP, sencillo, caraSencillo,pistaSencillo) VALUES ('1','Back in Black',300,'AC/DC',1000000001,'A',5,1000000011,'A',1); -- Back in Black,
INSERT INTO TEMA (codigo, titulo, duracion,autor, LP, caraLP, pistaLP, sencillo, caraSencillo,pistaSencillo) VALUES ('2','La Cancion de Juan Perro',301,'Radio Futura',2000000001,'A',1,2000000011,'A',1); -- La Cancion de Juan Perro 
INSERT INTO TEMA (codigo, titulo, duracion,autor, LP, caraLP, pistaLP, sencillo, caraSencillo,pistaSencillo) VALUES ('4','Carnaval',303,'Sidonie', 3000000001,'A',4,3000000011,'A',1); -- El Fluido Garcia
INSERT INTO TEMA (codigo, titulo, duracion,autor, LP, caraLP, pistaLP, sencillo, caraSencillo,pistaSencillo) VALUES ('5','On the Sofa',304,'Sidonie',3000000002,'A',2,3000000012,'A',1); -- Shell Kids
INSERT INTO TEMA (codigo, titulo, duracion,autor, LP, caraLP, pistaLP, sencillo, caraSencillo,pistaSencillo) VALUES ('7','Bohemian Rhapsody',306,'Queen',5000000001,'A',1,5000000011,'A',1); -- A Night at the Opera
INSERT INTO TEMA (codigo, titulo, duracion,autor, LP, caraLP, pistaLP, sencillo, caraSencillo,pistaSencillo) VALUES ('8','Another One Bites the Dust',307,'Queen',5000000002,'A',1,5000000012,'A',1); -- The Game   
INSERT INTO TEMA (codigo, titulo, duracion,autor, LP, caraLP, pistaLP, sencillo, caraSencillo,pistaSencillo) VALUES ('9','Dragon Attack',260,'Queen',5000000002,'A',2,5000000012,'B',1); -- Otra canción en el sencillo de The Game   

--EMISION
INSERT INTO EMISION (radio, fechaHora, tema) VALUES ('Europa FM',to_date('01-01-1981 08:03:01','DD-MM-YYYY HH24:MI:SS'),'2'); -- Europa FM emite solo musica espanyola
INSERT INTO EMISION (radio, fechaHora, tema) VALUES ('Europa FM',to_date('01-03-1981 08:03:01','DD-MM-YYYY HH24:MI:SS'),'4');
INSERT INTO EMISION (radio, fechaHora, tema) VALUES ('Europa FM',to_date('01-04-1981 08:03:01','DD-MM-YYYY HH24:MI:SS'),'5');
INSERT INTO EMISION (radio, fechaHora, tema) VALUES ('Europa FM',to_date('01-11-1981 08:03:01','DD-MM-YYYY HH24:MI:SS'),'7');
INSERT INTO EMISION (radio, fechaHora, tema) VALUES ('RNE3',to_date('02-01-1981 08:03:01','DD-MM-YYYY HH24:MI:SS'),'1'); -- RNE3 emite solo a Sabina
INSERT INTO EMISION (radio, fechaHora, tema) VALUES ('40 Principales',to_date('03-01-1987 08:03:01','DD-MM-YYYY HH24:MI:SS'),'2'); -- 40 Principales lo emite todo, menos AC/DC
INSERT INTO EMISION (radio, fechaHora, tema) VALUES ('40 Principales',to_date('27-10-1987 09:03:01','DD-MM-YYYY HH24:MI:SS'),'4');
INSERT INTO EMISION (radio, fechaHora, tema) VALUES ('40 Principales',to_date('03-04-1987 10:03:01','DD-MM-YYYY HH24:MI:SS'),'8');
INSERT INTO EMISION (radio, fechaHora, tema) VALUES ('40 Principales',to_date('03-01-1987 11:03:01','DD-MM-YYYY HH24:MI:SS'),1);
INSERT INTO EMISION (radio, fechaHora, tema) VALUES ('40 Principales',to_date('03-02-1987 12:03:01','DD-MM-YYYY HH24:MI:SS'),'5');
INSERT INTO EMISION (radio, fechaHora, tema) VALUES ('40 Principales',to_date('03-03-1987 13:03:01','DD-MM-YYYY HH24:MI:SS'),'1');
INSERT INTO EMISION (radio, fechaHora, tema) VALUES ('40 Principales',to_date('27-10-1987 14:03:01','DD-MM-YYYY HH24:MI:SS'),'4');

--RANKING
INSERT INTO RANKING VALUES(1989,1,5000000011,1000000011,2000000011);
INSERT INTO RANKING VALUES(1989,2,5000000011,1000000011,2000000011);
INSERT INTO RANKING VALUES(1989,3,5000000011,1000000011,2000000011);
INSERT INTO RANKING VALUES(1989,4,5000000011,1000000011,2000000011);
INSERT INTO RANKING VALUES(1989,5,5000000011,1000000011,2000000011);
INSERT INTO RANKING VALUES(1989,6,1000000011,5000000011,2000000011);
INSERT INTO RANKING VALUES(1989,7,1000000011,5000000011,2000000011);
INSERT INTO RANKING VALUES(1989,8,1000000011,5000000011,2000000011);
INSERT INTO RANKING VALUES(1989,9,1000000011,5000000011,2000000011);
INSERT INTO RANKING VALUES(1989,10,1000000011,5000000011,2000000011);
INSERT INTO RANKING VALUES(1990,1,2000000111,1000000011,5000000011);
INSERT INTO RANKING VALUES(1990,2,5000000011,1000000011,2000000111);
INSERT INTO RANKING VALUES(1990,3,3000000011,1000000011,2000000011);
INSERT INTO RANKING VALUES(1990,4,5000000011,1000000011,3000000011);
INSERT INTO RANKING VALUES(1990,5,5000000011,1000000011,3000000011);

-- OTRAS INSERCIONES
--GRUPO
INSERT INTO GRUPO (nombre, anyoFundacion, pais) VALUES ('Rosalia','2013','Espana');

--VINILO
INSERT INTO VINILO (ISVN, fechaLanzamiento, copiasVendidas, grupo, discografica) VALUES (6000000001,TO_DATE('18-03-2022','DD-MM-YYYY'),100000,'Rosalia','Columbia Records'); 
INSERT INTO VINILO (ISVN, fechaLanzamiento, copiasVendidas, grupo, discografica) VALUES (6000000011,TO_DATE('04-02-2022','DD-MM-YYYY'),25000,'Rosalia','Columbia Records'); 

--LP
INSERT INTO LP (ISVN, titulo, copiasLanzamiento) VALUES (6000000001, 'Motomami', 100000);

--SENCILLO
INSERT INTO SENCILLO(ISVN, ISVNLP) VALUES(6000000011, 6000000001);

--TEMA
INSERT INTO TEMA (codigo, titulo, duracion,autor, LP, caraLP, pistaLP, sencillo, caraSencillo,pistaSencillo) VALUES ('10','Saoko',137,'Rosalia', 6000000001,'A',1,6000000011,'A',1); -- Saoko rosalia
INSERT INTO TEMA (codigo, titulo, duracion,autor, LP, caraLP, pistaLP) VALUES ('11','Candy',193,'Rosalia', 6000000001,'A',2); -- candy rosalia
INSERT INTO TEMA (codigo, titulo, duracion,autor, LP, caraLP, pistaLP) VALUES ('12','Bizcochito',109,'Rosalia', 6000000001,'B',1); -- Bizcochito rosalia

-- EMIMISION

INSERT INTO EMISION (radio, fechaHora, tema) VALUES ('40 Principales', TO_DATE('03-04-2022 08:00:00', 'DD-MM-YYYY HH24:MI:SS'),10);
INSERT INTO EMISION (radio, fechaHora, tema) VALUES ('40 Principales', TO_DATE('27-04-2022 09:00:00', 'DD-MM-YYYY HH24:MI:SS'),10);
INSERT INTO EMISION (radio, fechaHora, tema) VALUES ('40 Principales', TO_DATE('05-05-2022 10:00:00', 'DD-MM-YYYY HH24:MI:SS'),10);
INSERT INTO EMISION (radio, fechaHora, tema) VALUES ('40 Principales', TO_DATE('06-05-2022 11:00:00', 'DD-MM-YYYY HH24:MI:SS'),10);

--2.3. Añada una restricción sin nombre que compruebe que los únicos países válidos para las Discográficas son “Espanya” y “EEUU”
ALTER TABLE DISCOGRAFICA ADD CHECK ( pais IN ('Espanya', 'EEUU'));

-- .Intente actualizar los datos, cambiando a “Francia” el nombre del país para la Discográfica RCA (incumpliendo la restricción) y compruebe el error que devuelve Oracle
UPDATE DISCOGRAFICA
SET pais = 'Francia'
WHERE nombre = 'RCA';
-- ORA-02290: restricción de control (C##U_PRACTICA.SYS_C00191074) violada

--Elimne restriccion. no tiene nombre asignado hay q buscar nombre, se ve al ejecutar el update erroneo anterior
ALTER TABLE DISCOGRAFICA
DROP CONSTRAINT SYS_C00190810; -- va cambiando cada vezque ejecutamos

-- Insertar restriccion con nombre
ALTER TABLE DISCOGRAFICA ADD CONSTRAINT CK_DISC_Pais_Valido
CHECK (pais IN ('Espanya', 'EEUU'));


--2.4 Dos emisorasde radio no pueden tener misma url web

ALTER TABLE RADIO ADD CONSTRAINT CK_RADIO_web
UNIQUE (web);

--DESHABILITAR RESTRICCION
ALTER TABLE RADIO DISABLE CONSTRAINT CK_RADIO_web;

-- cambiar valor de trve1 y 3 de web
UPDATE RADIO
SET web = 'https://rtve.es'
WHERE nombre IN ('RNE1', 'RNE3');

--aÑADIR FECHA FUNDACION Y SI NO LO INSERTA FECHA SYSDATE
ALTER TABLE RADIO
ADD Fecha_Fundacion DATE DEFAULT SYSDATE NOT NULL;

--PERMITIR NULOS EN TELEFONO RADIO
ALTER TABLE RADIO
MODIFY telefono VARCHAR2(15) NULL;

--PRACTICA 3 VISTAS

--Nombre grupos españoles
SELECT nombre FROM GRUPO WHERE pais = 'Espanya';

--Nombre y web de las emisoras de radio cuya web de dominio es español, que contesnga .es, (Con like, %contiene n caracteres)
SELECT nombre,web FROM RADIO WHERE web LIKE '%.es%';

--3.3Nombre de los grupos y numero de copias vendidad, ordenadas de mayor a menor por el numero de copias vendidas (ASC DESC)
SELECT grupo, copiasVendidas FROM VINILO ORDER BY copiasVendidas DESC;

-- 3.4Nombre de los autores sin repetir de los temas que se encuentran en sencillos.
SELECT autor FROM TEMA WHERE sencillo IS NOT NULL GROUP BY autor;

--3.5 Para los LPs con sencillos editados, ISVN del LP y numero de sencillos editados
SELECT ISVN, COUNT(ISVN)
FROM LP
GROUP BY ISVN;

--3.6 Titulo de LPs junto con el titulo, autor y duracion de sus temas
SELECT titulo, autor, duracion FROM TEMA;

--3.7 Titulo y  grupos de los LPs que superan en ventas las copias de lanzamiento
SELECT TEMA.titulo, VINILO.grupo FROM TEMA JOIN VINILO ON TEMA.LP = VINILO.ISVN
JOIN LP ON LP.ISVN = TEMA.LP WHERE LP.copiasLanzamiento < VINILO. copiasVendidas;

--3.8 Titulo de los temas que no se han pinchado nunca emla radio.
SELECT titulo
FROM TEMA
WHERE codigo NOT IN (
    SELECT tema
    FROM EMISION
);

--3.9 ISVN Y titulo de LPs de grupos españoles
SELECT LP,titulo
FROM TEMA
JOIN VINILO ON VINILO.ISVN = TEMA.LP
JOIN GRUPO ON GRUPO.nombre = VINILO.grupo
WHERE GRUPO.pais = 'Espanya';

--3.10 ISVN y duracion total de todos los sencillos cuya duracion sea mayor que 500segundos.

SELECT sencillo, duracion
FROM TEMA 
WHERE (DURACION>= 500);

--3.11 ISVN del sencillo, tiulo del lp alque pertenecce, numero de semanas en el primer lugar del ranking durante 1989
SELECT 
    SENCILLO.ISVN,
    LP.titulo,
    COUNT(RANKING.primero) as veces_primero
FROM SENCILLO
JOIN LP 
    ON LP.ISVN = SENCILLO.ISVNLP
JOIN RANKING 
    ON RANKING.primero = SENCILLO.ISVN
GROUP BY 
    SENCILLO.ISVN,
    LP.titulo;

--3.12. Nombre y nacionalidad de grupos alguno de cuyos vinilos están producidos por discográficas de su misma nacionalidad
SELECT  GRUPO.nombre, DISCOGRAFICA.nombre
FROM GRUPO
JOIN VINILO ON VINILO.grupo = GRUPO.nombre
JOIN DISCOGRAFICA ON DISCOGRAFICA.nombre = VINILO.discografica
WHERE (GRUPO.pais = DISCOGRAFICA.pais)
GROUP BY GRUPO.nombre, DISCOGRAFICA.nombre;

--3.13 GRUPO CON MAS EMISIONES EN RADIO Y NUMERO DE VECES 
SELECT VINILO.grupo, count(VINILO.grupo) as numero_emisiones
FROM VINILO 
JOIN TEMA ON TEMA.LP = VINILO.ISVN
JOIN EMISION ON EMISION.tema = TEMA.codigo
GROUP BY VINILO.grupo;

--3.14 VISTA CON EL NOMBRE Y AÑO FUNDACION GRUPOS
CREATE VIEW fundacion_grupos 
AS (SELECT nombre, anyoFundacion
FROM GRUPO);


--3.15. Vista que contenga el nombre y la dirección de las radios. 
CREATE VIEW dir_radio AS
(SELECT nombre, direccion
FROM RADIO);

--3.16. Vista que contenga el nombre del grupo y el número de vinilos publicados por dicho 
--grupo. El atributo que contenga el número de vinilos deberá llamarse TotalVinilos

CREATE VIEW grupo_vinilos AS
(SELECT grupo, COUNT(ISVN) AS totalvinilos
FROM VINILO
GROUP BY grupo);