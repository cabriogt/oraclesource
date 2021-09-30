--con el comando create podemos crear una tabla con los datos que deseamos.

CREATE TABLE persona ( 
nombre VARCHAR (20),
apellido varchar(20),
edad NUMBER(2),
num_id NUMBER (5)
);

-- con el comando alter podemos alterar una tabla y para introducir algun dato  
--adicional usamos el comando ADD 
ALTER TABLE persona ADD segundo_apellido VARCHAR(20);

-- con el comando alter podemos alterar una tabla y para eliminar algun dato  
--adicional usamos el comando DROP 
ALTER TABLE persona DROP COLUMN segundo_apellido;

--Para eliminar una tabla por completo usamos el comando.
DROP TABLE persona;

--el comando Truncatenos sirva para borrar los datos dentro de una tabla 
TRUNCATE TABLE persona;

--CLAVES PRIMARIAS son aquellas que identifican una table es decir es un dato que 
--no se repite en alguna tabla

--CLAVES AJENAS son los valores que pueden coincidir entre tablas 

--Ejercicio crear dos tablas con claves primarias y claves ajenas 

--Creamos una tabla llamada persona 

CREATE TABLE persona ( 
nombre VARCHAR (20),
apellido varchar(20),
edad NUMBER(2),
num_id NUMBER (5)
);

--alteramos la tabla persona agregando la columna numero_departamento.
ALTER TABLE persona ADD numero_departamento NUMBER(2);

--Creamos una tabla llamada departamento. 
CREATE TABLE departamento ( 
nombre_dep VARCHAR (20),
numero_dep NUMBER(2),
planta VARCHAR(20)
);

--modificamos la tabla departamento para agregar una restriccion con el comando
-- CONSTRAINT y agregar una clave primaria con el comando PRIMARY KEY.
ALTER TABLE departamento ADD CONSTRAINT PK1 PRIMARY KEY (numero_dep);

--modificamos la tabla persona para agregar una restriccion con el comando
-- CONSTRAINT y agregar una clave ajena con el comando FOREIGN KEY.
--agregando la referencia con el comando REFERENCES que hara el link entre las tablas.
ALTER TABLE persona ADD CONSTRAINT FK1 FOREIGN KEY (numero_departamento) REFERENCES departamento;






