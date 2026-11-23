# IFCD0112 MF0226 BBDD Relacionales Ejer 1.
Desarrollar esquema E-R + determinar claves y relaciones.
## Enunciado:
En una nueva empresa de transporte diferente, también con varios conductores, necesitamos tener almacenados en la base de datos la siguiente información:

- Número de chófer
- Nombre y apellidos
- Dirección
- Teléfono
- Sueldo
- Antigüedad
- Tipo de vehículo
- Matrícula
- Antigüedad del vehículo
- Zona de trabajo
- Días por zona
- 
Teniendo en cuenta que un chofer solo puede trabajar en una zona por vez y solo con un tipo de vehículo asignado, desarrolla el esquema E-R y lógico con los datos requeridos y determina las claves y las relaciones.

Objetivos:
- Determinar los elementos de la base de datos que se han de manipular, mediante la interpretación del diseño de la base de datos y el análisis de los requisitos de usuario.
- Enumerar los principales modelos para la obtención de esquemas conceptuales de la base de datos.
- Describir la simbología asociada al modelo conceptual entidad-relación.

## Desarrollo:
### Esquema E-R:
![Esquema E-R](img/esquema-ER.png)

### Cambios respecto a la actividad anterior:
- Chófers añade los atributos: dirección, teléfono y días por zona (al ser la relación N:1, cada chófer trabaja en una sola zona y por tanto tiene un único valor de días por zona). Se mantiene nº de chófer como clave primaria.
- Vehículos tiene nuevos atributos: matrícula, la cual será la clave primaria porque identifica cada vehículo de forma única y antigüedad del vehículo, que junto a tipo de vehículo se quedan como atributos normales.

### Claves:
- Chófers: la clave primaria es nº de chófer. Las claves ajenas (foreign keys): zona de trabajo y matrícula.
- Zonas de trabajo: la clave primaria es zona de trabajo.
- Vehículos: la clave primaria es matrícula.

### Relaciones:
- Chófers -> trabaja en -> Zonas de trabajo (N:1): un chófer trabaja en una sola zona, pero en una zona pueden trabajar muchos chófers.
- Chófers -> conduce -> Vehículos (N:1): un chófer tiene asignado un solo vehículo, pero un mismo vehículo puede estar asignado a varios chófers.

### Tablas:
[Ver código SQL](sql/ejercicio1.sql)

## Feedback del profesor:
Estimado/a LAURA GIL ORTIZ,
Dicha tarea ha sido evaluada con una nota de: 10
Mensaje: Hola, Laura. Has hecho un ejercicio muy completo y bien razonado: has identificado con acierto las entidades, atributos y claves en el esquema E-R, la explicación de la simbología es clara y la síntesis de los diferentes modelos conceptuales y lógicos demuestra que dominas la teoría. 

Para cualquier consulta que se te plantee puedes contactar con el departamento académico a través de cualquiera de las vías que tienes a tu disposición.
Recibe un cordial saludo (TUTOR) MARIANO HOMERO GIRALDEZ RUBISTEIN .
