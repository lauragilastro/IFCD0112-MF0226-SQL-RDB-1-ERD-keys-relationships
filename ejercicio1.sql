CREATE TABLE zonas_trabajo (
  zona_trabajo  VARCHAR(30) PRIMARY KEY
);

CREATE TABLE vehiculos (
  matricula   VARCHAR(10) PRIMARY KEY,
  tipo        VARCHAR(30),
  antiguedad  DATE
);

CREATE TABLE chofers (
  num_chofer     CHAR(6) PRIMARY KEY,
  nombre         VARCHAR(40),
  apellidos      VARCHAR(80),
  direccion      VARCHAR(100),
  telefono       VARCHAR(15),
  sueldo         DECIMAL(10,2),
  antiguedad     DATE,
  dias_por_zona  TINYINT UNSIGNED,
  zona_trabajo   VARCHAR(30),
  matricula      VARCHAR(10),
  FOREIGN KEY (zona_trabajo) REFERENCES zonas_trabajo(zona_trabajo),
  FOREIGN KEY (matricula)    REFERENCES vehiculos(matricula)
);