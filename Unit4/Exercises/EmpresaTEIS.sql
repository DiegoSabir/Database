#------------------------------------------------------------------------------------------------
#  1. CREACIÓN DE LA BASE DE DATOS Y USO
#------------------------------------------------------------------------------------------------
DROP DATABASE IF EXISTS EmpresaTEIS;
CREATE DATABASE EmpresaTEIS;
USE EmpresaTEIS;
#------------------------------------------------------------------------------------------------
#  2. CREACIÓN DE LAS TABLAS DE LA BASE DE DATOS
#------------------------------------------------------------------------------------------------
# CREACIÓN DE LA TABLA 'depto' CON LOS SIGUIENTES CAMPOS:
#	depto		- CÓDIGO DE DEPARTAMENTO
#	sigla		- SIGLA DEL DEPARTAMENTO
#	nome		- NOMBRE DEL DEPARTAMENTO
#	ciudad		- CIUDAD EN LA QUE ESTÁ EL DEPARTAMENTO
#	pais		- PAÍS EN EL QUE ESTÁ EL DEPARTAMENTO
#	tf			- TELÉFONO DEL DEPARTAMENTO
#	supJer		- DEPARTAMENTO SUPERIOR JERÁRQUICO
#------------------------------------------------------------------------------------------------
CREATE TABLE depto (
  depto INT,
  sigla VARCHAR ( 50 ),
  nome VARCHAR ( 50 ),
  ciudad VARCHAR ( 50 ), 
  pais VARCHAR ( 10 ),
  tf	VARCHAR ( 100 ),
  supJer VARCHAR ( 10 ),
  
  PRIMARY KEY ( empleadoID ),
  FOREIGN KEY ( oficina ) REFERENCES oficina ( oficinaID )
  );
#------------------------------------------------------------------------------------------------
#  3. CREACIÓN DE LA TABLA 'emple' CON LOS SIGUIENTES CAMPOS:
#------------------------------------------------------------------------------------------------
#	emp		- CÓDIGO DE EMPLEADO
#	nome	- NOMBRE DEL EMPLEADO
#	Apel1	- PRIMER APELLIDO DEL EMPLEADO
#	Apel2	- SEGUNDO APELLIDO DEL EMPLEADO
#	sal		- SUELDO DEL EMPLEADO
#	FecInc	- FECHA DE INCORPORACIÓN A LA LISTA DE LA EMPRESA
#------------------------------------------------------------------------------------------------

#------------------------------------------------------------------------------------------------
#  4. CREACIÓN DE LA TABLA 'asign' CON LOS SIGUIENTES CAMPOS:
#------------------------------------------------------------------------------------------------
#   	codAsi		- CÓDIGO DE ASIGNACIÓN
#   	emp			- CÓDIGO DE EMPLEADO
#   	dpto		- CÓDIGO DE DEPARTAMENTO
#   	FecAsi		- FECHA DE ASIGNACIÓN
#		FecCan		- FECHA DE FINALIZACIÓN DE LA ASIGNACIÓN O DE DESPIDO
#------------------------------------------------------------------------------------------------

#------------------------------------------------------------------------------------------------
#  5. CREA LLAVES PRIMARIAS
#------------------------------------------------------------------------------------------------
#	En la tabla depto    ->		depto
#	En la tabla emple    ->		emp
#	En la tabla asign    -> 	codAsi
#------------------------------------------------------------------------------------------------

#------------------------------------------------------------------------------------------------
#  6. CREA LLAVES FORÁNEAS
#------------------------------------------------------------------------------------------------
#	En la tabla depto    ->		supJer 	  ->  TABLA depto
#	En la tabla asign    -> 	emp       ->  TABLA emple
#								depto	  ->  TABLA depto
#------------------------------------------------------------------------------------------------

#------------------------------------------------------------------------------------------------
#  7. CREA RESTRICCIONES DE VALORES NO NULOS
#------------------------------------------------------------------------------------------------
#	En la tabla depto    ->		sigla, nome, pais
#	En la tabla emple    ->		nome, Apel1, FecInc
#	En la tabla asign    -> 	emp, depto, FecAsi
#------------------------------------------------------------------------------------------------

#------------------------------------------------------------------------------------------------
#  8. CREA RESTRICCIONES DE COMPARACIÓN
#------------------------------------------------------------------------------------------------
#	En la tabla depto    ->		sigla, nome, ciudad, pais		NO PUEDEN QUEDAR VACÍOS
#	En la tabla emple    ->		nome, Apel1, sal				NO PUEDEN QUEDAR VACÍOS
#								sal								NO PUEDE SER NEGATIVO
#------------------------------------------------------------------------------------------------

#------------------------------------------------------------------------------------------------
#  9. CREA RESTRICCIONES DE ACCESO RÁPIDO
#------------------------------------------------------------------------------------------------
#	En la tabla depto    ->		sigla	(valor o código interno en la empresa)
#	En la tabla emple    ->		nome	(nombre de empleado)
#	En la tabla asign    -> 	FecAsi	(fecha de asignación del empleado a un departamento)
#------------------------------------------------------------------------------------------------

#------------------------------------------------------------------------------------------------
# 10. CAMBIO DE NOMBRES (tras hacer esto, puedes MODIFICAR el NOMBRE DE LAS TABLAS en la AGREGACIÓN DE DATOS)
#	Nombres de las tablas hacia más significativos.
#------------------------------------------------------------------------------------------------




#------------------------------------------------------------------------------------------------
# AGREGACIÓN DE DATOS
#------------------------------------------------------------------------------------------------
# AGREGAR DEPARTAMENTOS
#	( dpto, codigo,             nom,         ciudad,     pais,         tlf, director )
#------------------------------------------------------------------------------------------------
INSERT INTO departamento VALUES 
	( 1000,  'DIR',     'Dirección',         'Vigo', 'España', '400100100',     NULL ),
	( 1100,  'GER',      'Gerencia',         'Vigo', 'España', '400100110',	    1000 ),
	( 1105,  'GER',      'Gerencia',         'Lugo', 'España', '400100112',	    1000 ),
	( 1200,  'PRO',    'Producción',   'Pontevedra', 'España', '400100400',     1100 ),
	( 1300,  'VEN',        'Ventas',     'Santiago', 'España', '400100500',     1100 ),
	( 1302,  'VEN',        'Ventas',   'Pontevedra', 'España', '400100504',     1100 ),
	( 1310,  'VEN',        'Ventas',     'A Coruña', 'España', '400100580',     1100 ),
	( 1400,  'INV', 'Investigación',     'Santiago', 'España', '400100525',     1000 ),
	( 1500,  'MER',      'Mercadeo',         'Lugo', 'España', '400100800',     1100 ),
	( 9000,  'MAN', 'Mantenimiento',     'A Coruña', 'España', '400100996',     1000 ),
	( 9010,  'MAN', 'Mantenimiento',         'Lugo', 'España', '400100998',     1000 ),
	( 9020,  'MAN', 'Mantenimiento',      'Ourense', 'España', '400101099',     1000 ),
	( 9030,  'MAN', 'Mantenimiento',   'Pontevedra', 'España', '400102096',     1000 );

#------------------------------------------------------------------------------------------------
# AGREGAR EMPLEADOS
#	( emp, 		     nom,          pApel,          sApel,    sal,       inc )
#------------------------------------------------------------------------------------------------
INSERT INTO empleado VALUES
	(  1,'Fulgencio'	,'Abade'		,'Valdes'		,2000	,'2021/01/01' ),
	(  2,'Fulgencia'	,'Gómez'		,'Sazón'		,2030	,'2021/01/02' ),
	(  3,'Guillermino' 	,'Gil'			,'Enamorado'	,1970	,'2021/01/02' ),
	(  4,'Guillermina'  ,'Zuzunaga' 	,'Cacharro'		,1800	,'2021/01/22' ),
	(  5,'Pancracio'	,'Sorní'		,'Nuero'		,1650	,'2021/10/02' ),
	(  6,'Pancracia'	,'Pregonas' 	,'Vívora'		,1400	,'2021/12/01' ),
	(  7,'Filomeno'	 	,'Zuzunaga' 	,'Valdes'		,1400	,'2021/01/02' ),
	(  8,'Filomena'	 	,'Abade'		,'Cacharro'		,1300	,'2021/08/02' ),
	(  9,'Anaximandro' 	,'Abade'		,'Pieldelobo'	,1550	,'2021/09/01' ),
	( 10,'Anaximandra'	,'Sorní'		,'Vívora'		,1550	,'2021/03/02' ),
	( 11,'Romino'	 	,'Abade'		,'Tenedor'		,1550	,'2021/05/02' ),
	( 12,'Romina'	 	,'Bonachera'    ,'Pieldelobo'	,2000	,'2021/03/07' ),
	( 13,'Agapito'	 	,'Garza'		,'Feo'			,2000	,'2021/07/02' ),
	( 14,'Agapita'	 	,'Bonachera'    ,'Valdes'		,1550	,'2021/08/02' ),
	( 15,'Apolonio'	 	,'Garza'		,'Feo'			,1550	,'2021/03/01' ),
	( 16,'Apolonia'	 	,'Pregonas'     ,'Nuero'		,1550	,'2021/09/02' ),
	( 17,'Maximiano'	,'Pieldelobo'	,'Rajado'		,1300	,'2021/07/02' ),
	( 18,'Maximiana'	,'Fea'			,'Guapa'		,1750	,'2021/01/02' ),
	( 19,'Oristilo'		,'Anacleto'		,'Gandula'		,1850	,'2021/02/01' ),
	( 20,'Oristila'		,'Pelchilengue'	,'Verdugo'		,1900	,'2021/03/01' ),
	( 21,'Tesifonte'	,'Seisdedos'	,'Alcoholado'	,1800	,'2021/04/02' ),
	( 22,'Tesifonta'	,'Garza'		,'Sorní'		,1850	,'2021/04/02' ),
	( 23,'Lisandro'		,'Piernavieja'	,'Valdes'		,2300	,'2021/05/03' ),
	( 24,'Lisandra'		,'Fina'			,'Púlpito'		,2350	,'2021/01/03' ),
	( 25,'Acracio'		,'Braga'		,'Alegre'		,2250	,'2021/01/03' ),
	( 26,'Acracia'		,'Triste'		,'Alegre'		,1950	,'2021/02/03' ),
	( 27,'Procopio'		,'Bronca'		,'Segura'		,2400	,'2021/02/03' ),
	( 28,'Procopia'		,'Fina'			,'Segura'		,2300	,'2021/08/03' ),
	( 29,'Frumencio'	,'Ladrón'		,'Segura'		,2200	,'2021/09/05' ),
	( 30,'Frumencia'	,'Honrado'		,'Ladrón'		,2150	,'2021/02/05' ),
	( 31,'Edelvino'		,'Dios'			,'Salvador'		,2150	,'2021/03/05' ),
	( 32,'Edelvina'		,'Ladrón'		,'Salvador'		,1900	,'2021/03/05' ),
	( 33,'Agapito'		,'Triste'		,'Vital'		,2250	,'2021/03/05' ),
	( 34,'Agapita'		,'Alegre'		,'Vital'		,1900	,'2021/02/05' ),
	( 35,'Ruperto'		,'Bonachera'	,'Seisdedos'	,1950	,'2021/01/05' ),
	( 36,'Ruperta'		,'Cacharro'		,'Alegre'		,2250	,'2021/09/05' ),
	( 37,'Tesifonte'	,'Triste'		,'Alegre'		,2050	,'2021/04/05' ),
	( 38,'Tesifonta'	,'Cidoncha'		,'Parraverde'	,1950	,'2021/05/05' ),
	( 39,'Tiburcio'		,'Barato'		,'Fermonsel'	,1850	,'2021/05/05' ),
	( 40,'Tiburcia'		,'Caro'			,'Fermonsel'	,2000	,'2021/04/05' );

#------------------------------------------------------------------------------------------------
# AGREGAR ASIGNACIONES
#	( cod, 		     emp,          dpto,          fec,    can )
#------------------------------------------------------------------------------------------------
#   	cod		- CÓDIGO DE ASIGNACIÓN
#   	emp		- NÚMERO DE EMPLEADO
#   	dpto	- NÚMERO DE DEPARTAMENTO
#   	fec		- FECHA DE ASIGNACIÓN
#		can		- FECHA DE FINALIZACIÓN DE LA ASIGNACIÓN O DE DESPIDO
#------------------------------------------------------------------------------------------------
INSERT INTO asignaciones VALUES 
	(  1,  1, 1000, '2021/01/01', NULL ),
    (  2,  2, 1000, '2021/01/02', NULL ),
    (  3,  3, 1100, '2021/01/02', '2021/12/31' ),
    (  4, 18, 1200, '2021/01/02', NULL ),
    (  5, 24, 9000, '2021/01/03', NULL ),
    (  6, 25, 9000, '2021/01/03', NULL ),
    (  7, 35, 9030, '2021/01/05', NULL ),
    (  8, 26, 9010, '2021/02/03', NULL ),
    (  9,  4, 1300, '2021/01/22', NULL ),
    ( 10, 27, 9020, '2021/02/03', NULL ),
    ( 11, 34, 9020, '2021/02/05', NULL ),
    ( 12, 10, 1302, '2021/03/02', NULL ),
    ( 13, 31, 9030, '2021/03/05', NULL ),
    ( 14, 32, 9030, '2021/03/05', NULL ),
    ( 15, 21, 1500, '2021/04/02', NULL ),
    ( 16, 22, 1500, '2021/04/02', NULL ),
    ( 17, 37, 1302, '2021/04/05', NULL ),
    ( 18, 40, 1105, '2021/04/05', NULL ),
    ( 19, 38, 1500, '2021/05/05', NULL ),
    ( 20, 23, 1400, '2021/05/03', NULL ),
    ( 21, 13, 1310, '2021/07/02', NULL ),
    ( 22, 17, 1200, '2021/07/02', NULL ),
    ( 23, 28, 9030, '2021/08/03', NULL ),
    ( 24,  9, 1300, '2021/09/01', NULL ),
    ( 25, 16, 1105, '2021/09/02', NULL ),
    ( 26, 36, 1302, '2021/09/05', NULL ),
    ( 27,  5, 9000, '2021/12/01', '2021/12/31' ),
    ( 28,  6, 9000, '2021/12/01', '2021/12/31' ),
    ( 29, 11, 9010, '2021/12/01', '2021/12/31' ),
    ( 30, 12, 9010, '2021/12/01', '2021/12/31' ),
    ( 31, 18, 9020, '2021/12/01', '2021/12/31' ),
    ( 32, 19, 9020, '2021/12/01', '2021/12/31' ),
    ( 33, 20, 9030, '2021/12/01', '2021/12/31' ),
    ( 34, 30, 9030, '2021/12/01', '2021/12/31' ),
    ( 35,  3, 9000, '2022/01/01', '2022/01/31' ),
    ( 36, 12, 9010, '2022/01/01', NULL ),
    ( 37, 20, 9030, '2022/01/01', NULL ),
    ( 38,  3, 9010, '2022/02/01', '2022/02/28' ),
    ( 39,  6, 9010, '2022/02/01', '2022/02/28' ),
    ( 40, 30, 9000, '2022/02/01', '2022/02/28' ),
    ( 41,  3, 9010, '2022/03/01', '2022/03/15' ),
    ( 42,  6, 9010, '2022/03/01', '2022/03/19' ),
    ( 43, 30, 9000, '2022/03/01', '2022/03/31' ),
    ( 44,  3, 9030, '2022/05/01', '2022/05/31' ),
    ( 45,  6, 9000, '2022/05/01', '2022/07/31' ),
    ( 46, 30, 9020, '2022/05/01', '2022/08/31' );