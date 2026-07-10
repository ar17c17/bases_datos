DROP TABLE EMISION;
DROP TABLE RADIO; 
DROP TABLE TEMA;
DROP TABLE RANKING;
DROP TABLE SENCILLO;
DROP TABLE LP;
DROP TABLE VINILO;
DROP TABLE GRUPO;
DROP TABLE DISCOGRAFICA;


CREATE TABLE RADIO (
    nombre VARCHAR2(120) PRIMARY KEY,
    direccion VARCHAR2(120)NOT NULL,
    web VARCHAR2(120)NOT NULL,
    email VARCHAR2(120)NOT NULL,
    telefono VARCHAR2(9)NOT NULL
    );
    
CREATE TABLE EMISION(
    radio VARCHAR(120),
    fechahora DATE, 
    tema VARCHAR2(20) NOT NULL,
    PRIMARY KEY (radio , fechahora),
    FOREIGN KEY (radio) REFERENCES RADIO(nombre) ON DELETE CASCADE
    );


CREATE TABLE TEMA(
    codigo VARCHAR2(20) PRIMARY KEY,
    titulo VARCHAR2(120) NOT NULL,
    duracion NUMBER(4) NOT NULL,
    autor VARCHAR2(120) NOT NULL,
    LP NUMBER(12) NOT NULL,
    caraLP CHAR(1) NOT NULL,
    pistaLP NUMBER(2) NOT NULL,
    sencillo NUMBER(10),
    caraSencillo CHAR(1),
    pistaSencillo NUMBER(2)
    );
    
ALTER TABLE EMISION ADD CONSTRAINT FK_EMISION_tema FOREIGN KEY (tema) REFERENCES TEMA(codigo);

CREATE TABLE LP(
    ISVN NUMBER(10) PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL,
    copiasLanzamiento NUMBER(12) NOT NULL
    );
    
ALTER TABLE TEMA ADD CONSTRAINT FK_TEMA_LP FOREIGN KEY (LP) REFERENCES LP(ISVN);

CREATE TABLE SENCILLO(
    ISVN NUMBER(10) PRIMARY KEY,
    ISVNLP NUMBER(12) NOT NULL,
    FOREIGN KEY (ISVNLP) REFERENCES LP(ISVN) ON DELETE CASCADE
    );

ALTER TABLE TEMA ADD CONSTRAINT FK_TEMA_sencillo FOREIGN KEY (sencillo) REFERENCES SENCILLO(ISVN);

CREATE TABLE GRUPO(
    nombre VARCHAR2(120) PRIMARY KEY,
    anyoFundacion NUMBER(4) NOT NULL,
    pais VARCHAR(120)
    );
    
CREATE TABLE DISCOGRAFICA(
    nombre VARCHAR2(120) PRIMARY KEY,
    telefono NUMBER(9) NOT NULL,
    direccion VARCHAR(120) NOT NULL,
    pais VARCHAR(120) NOT NULL
    );
    
CREATE TABLE VINILO(
    ISVN NUMBER(10) PRIMARY KEY,
    fechaLanzamiento DATE NOT NULL, 
    copiasVendidas NUMBER(8) NOT NULL,
    grupo VARCHAR2(120) NOT NULL,
    discografica VARCHAR2(120),
    FOREIGN KEY (grupo) REFERENCES GRUPO(nombre),
    FOREIGN KEY (discografica) REFERENCES DISCOGRAFICA(nombre) ON DELETE SET NULL
    );
    ALTER TABLE SENCILLO ADD CONSTRAINT FK_SENCILLO_ISVN FOREIGN KEY (ISVN) REFERENCES VINILO(ISVN) ON DELETE CASCADE;
    ALTER TABLE LP ADD CONSTRAINT FK_LP_ISVN FOREIGN KEY (ISVN) REFERENCES VINILO(ISVN) ON DELETE CASCADE;

CREATE TABLE RANKING (
    anyo NUMBER(4),
    semana NUMBER(2),
    primero NUMBER(10),
    segundo NUMBER(10),
    tercero NUMBER(10),
    PRIMARY KEY(anyo, semana),

    -- Clave Ajena para el puesto 'primero'
    CONSTRAINT FK_Ranking_Primero FOREIGN KEY (primero)
        REFERENCES SENCILLO(ISVN) ON DELETE CASCADE,

    -- Clave Ajena para el puesto 'segundo'
    CONSTRAINT FK_Ranking_Segundo FOREIGN KEY (segundo)
        REFERENCES SENCILLO(ISVN) ON DELETE CASCADE,

    -- Clave Ajena para el puesto 'tercero'
    CONSTRAINT FK_Ranking_Tercero FOREIGN KEY (tercero)
        REFERENCES SENCILLO(ISVN) ON DELETE CASCADE
);
-- Original (Incorrecto): LP NUMBER(12) NOT NULL,
-- Corrección:
ALTER TABLE TEMA
MODIFY LP NUMBER(10);
ALTER TABLE SENCILLO
MODIFY ISVNLP NUMBER(10);

-- ******* ALTERACIONES Y RESTRICCIONES *******
-- El ISVN de un sencillo no puede ser igual que el del LP al que pertenece (ISVNLP).
ALTER TABLE SENCILLO ADD CONSTRAINT CHK_ISVN_DIFERENTE CHECK (ISVN <> ISVNLP);

--El mismo autor no puede componer dos temas con el mismo título.
ALTER TABLE TEMA ADD CONSTRAINT CHK_AUTOR_TEMA UNIQUE (autor, titulo);

--Los campos que identifican el sencillo, la cara y la pista donde puede estar grabado unTema han de ser, o los tres nulos, o los tres no nulos
ALTER TABLE TEMA ADD CONSTRAINT CHK_SENCILLO_CARA_PISTA 
CHECK (
    -- Opción 1: Los tres campos son NULOS (El tema no está en un sencillo)
    (sencillo IS NULL AND caraSencillo IS NULL AND pistaSencillo IS NULL)
    OR
    -- Opción 2: Los tres campos NO son NULOS (El tema está completamente localizado)
    (sencillo IS NOT NULL AND caraSencillo IS NOT NULL AND pistaSencillo IS NOT NULL)
);

