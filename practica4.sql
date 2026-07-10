--4. Actualización de datos y modificación del esquema.  
--4.1. Intente borrar las siguientes tuplas. En los casos en los que se pueda llevar a cabo el 
--borrado, compruebe qué consecuencias ha tenido dicho borrado en otras tablas. En los 
--casos en los que el borrado sea rechazado por Oracle, piense en los motivos y en 
--formas alternativas de realizar el borrado. 
--4.1.1. Vinilo 6000000001 de Rosalía. 
DELETE FROM VINILO
WHERE ISVN = 6000000001; --No permite el borrado ya que tema Lp tiene el borrado restringido
--La solucion seria borrarlo primero de tema Y EMISION
DELETE FROM EMISION
WHERE tema IN (
    SELECT codigo
    FROM TEMA
    WHERE LP = 6000000001
);
DELETE FROM TEMA
WHERE LP = 6000000001;

DELETE FROM VINILO
WHERE ISVN = 6000000001;

--DE ETA MANERA PODRIAMOS ELIMINARLO, OTRA MANERA SERIA CON UN ALTER TABLE Y CAMBIAR LA RESTRICCION


--4.1.2. Radio RNE3.
DELETE FROM RADIO
WHERE (nombre = 'RNE3');
--si permite borrado

--4.1.3. Discográfica RCA. 
DELETE FROM DISCOGRAFICA WHERE ( nombre= 'RCA');   

--4.2. Incremente en dos minutos el valor del atributo “fechaHora” de las emisiones de radio 
-- del 01/04/1981
SELECT * FROM EMISION;

UPDATE EMISION
SET fechaHora = fechaHora + INTERVAL '2' MINUTE
WHERE fechaHora >= TO_DATE('1981-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
  AND fechaHora < TO_DATE('1981-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS');

 
--4.3. Duplique el número de copias de lanzamiento para los LPs del grupo Queen.  
SELECT * FROM LP;
SELECT * FROM VINILO;
UPDATE LP
SET copiasLanzamiento = copiasLanzamiento * 2
WHERE ISVN IN (SELECT ISVN FROM VINILO
WHERE grupo = 'Queen');

--4.4. En la actualidad solo se almacena el nombre del grupo en la base de datos. Añada una 
--tabla con la información de los miembros del grupo que lo componen (Identificador, 
--nombre, fecha de nacimiento, país de nacimiento) y asocie cada miembro al grupo al 
--que pertenece, asumiendo que pertenece a un único grupo. Piense en una solución 
--alternativa si los grupos van cambiando de composición, es decir, incorporándose unos 
--miembros y desvinculándose otros a lo largo del tiempo. 
CREATE TABLE MIEMBRO(
    ID NUMBER(8) PRIMARY KEY,
    nombre VARCHAR2(120),
    grupo VARCHAR2(120),
    nacimiento DATE,
    paisNacimiento VARCHAR2(120),
    FOREIGN KEY (grupo) REFERENCES GRUPO(Nombre));
    
INSERT INTO MIEMBRO(ID, nombre, grupo, nacimiento, paisNacimiento) VALUES( '1', 'carlos', 'Queen', '10-02-2020', 'espana');
SELECT * from miembro;
SELECT * FROM GRUPO;

update MIEMBRO SET GRUPO = 'Rosalia'  WHERE ID = '1';
--4.5. En la solución actual únicamente se guardan los tres primeros puestos del ranking 
--semanal. ¿Cómo modificaría el esquema para incorporar cualquier número de puestos?  
--¿Su solución recoge que haya al menos un primer puesto todas las semanas?  
SELECT * FROM RANKING;

ALTER TABLE RANKING 
ADD ( puesto NUMBER(3));
UPDATE RANKING SET puesto = 1 WHERE primero IS NOT NULL;
UPDATE RANKING SET puesto = 2 WHERE segundo IS NOT NULL;
UPDATE RANKING SET puesto = 3 WHERE tercero IS NOT NULL;

ALTER TABLE RANKING
DROP COLUMN PRIMERO;
ALTER TABLE RANKING
DROP COLUMN SEGUNDO;
ALTER TABLE RANKING
DROP COLUMN TERCERO;

ALTER TABLE RANKING
ADD ( SENCILLO NUMBER(10));

ALTER TABLE RANKING 
DROP PRIMARY KEY;

ALTER TABLE RANKING
ADD PRIMARY KEY (ANYO, SEMANA, PUESTO);

ALTER TABLE RANKING
ADD FOREIGN KEY (sencillo) REFERENCES SENCILLO ON DELETE CASCADE;

ALTER TABLE RANKING
ADD CONSTRAINT puesto_positivo CHECK ( PUESTO > 0);



--4.6. La base de datos actual cada vinilo se corresponde con un único grupo. ¿Cómo 
--modificaría el esquema para permitir que existieran vinilos en los que participaran varios 
--grupos? 

SELECT * FROM VINILO;
--CRAR NUYEVA TABLA
CREATE TABLE GRUPOS_VINILO ( 
    ISVN NUMBER(10),
    GRUPO VARCHAR2(120),
    PRIMARY KEY(ISVN, GRUPO),
    FOREIGN KEY (ISVN) REFERENCES VINILO(ISVN),
    FOREIGN KEY (GRUPO) REFERENCES GRUPO(NOMBRE)
);
--INTERTAR VALORES DE GRUPO EN NUEVA TABLA
INSERT INTO GRUPOS_VINILO (ISVN, GRUPO)
SELECT ISVN, GRUPO
FROM VINILO
WHERE GRUPO IS NOT NULL;

SELECT * FROM GRUPOS_VINILO;
-- ELIMINAR COLUN¡MNA GRUPO DE VINILO
ALTER TABLE VINILO
DROP COLUMN GRUPO;