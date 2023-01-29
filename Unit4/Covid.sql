#-------------------------------------------------------------------------------------
# CREACIÓN DE LA BASE DE DATOS
#-------------------------------------------------------------------------------------
DROP DATABASE IF EXISTS Covid;
CREATE DATABASE Covid
	CHARACTER SET utf32
	COLLATE utf32_spanish2_ci;
USE Covid;
#-------------------------------------------------------------------------------------
# CREACIÓN DE LA TABLA "Covid"
#		prov_ISO			cadena de caracteres 2					# CÓDIGO ISO DE LA PROVINCIA
#		fecha				datos de tipo fecha						# FECHA DE LOS DATOS
#		casos				entero									# CASOS NOTIFICADOS CON PRUEBA DIANÓSTICA POSITIVA
#		prob_PCR			entero									# PRUEBA DE LABORATORIO PCR O TÉCNICAS MOLECULARES
#		prob_AnCps			entero									# PRUEBA DE LABORATORIO DE TEST RÁPIDO DE ANTICUERPOS
#		prob_Ant			entero									# PRUEBA DE LABORATORIO DE TEST DE DETECCIÓN DE ANTÍGENO
#		prob_El				entero									# PRUEBA DE LABORATORIO DE SEROLOGÍA DE ALTA RESOLUCIÓN
#		prob_desc			entero									# PRUEBAS DE LABOTARIO SIN CONFIRMAR
#		
#		clave primaria		Prov_ISO, fecha
#-------------------------------------------------------------------------------------
CREATE TABLE Covid (
  prov_ISO VARCHAR ( 2 ) ,
  fecha DATE,
  casos INT,
  prob_PCR INT,
  prob_AnCps INT,
  prob_Ant INT,
  prob_El INT,
  prob_desc INT,
  
  PRIMARY KEY (prov_ISO, fecha)
  );
  
#-------------------------------------------------------------------------------------
# CREACIÓN DE LA TABLA "Población"
#		ProvinciaISO		cadena de caracteres  2
#		Nombre				cadena de caracteres 25
#		Sexo				cadena de caracteres 10
#		Periodo				entero
#		Total				cadena de caracteres  9
#
#		clave primaria		ProvinciaISO, Sexo, Periodo
#-------------------------------------------------------------------------------------
CREATE TABLE Población (
  ProvinciaISO VARCHAR ( 2 ),
  Nombre VARCHAR ( 25 ),
  Sexo VARCHAR ( 10 ),
  Periodo INT,
  Total VARCHAR ( 9 ),
  PRIMARY KEY (ProvinciaISO, Sexo, Periodo)
  );
  
#-------------------------------------------------------------------------------------
#	MODIFICACIÓN DE LA TABLA Covid
#		Nuevo nombre de la tabla	->	DatosCovid
#					prov_ISO		->	provinciaISO
#					prob_PCR		->	pruebaPCR
#					prob_AnCps		->	pruebaAnticuerpos
#					prob_Ant		->	pruebaAntígenos
#					prob_El			->	pruebaElisa
#					prob_desc		->	pruebaDesconocida
#-------------------------------------------------------------------------------------
RENAME TABLE Covid TO DatosCovid;
    
ALTER TABLE DatosCovid
	CHANGE COLUMN prov_ISO provinciaISO VARCHAR ( 2 ),
    CHANGE COLUMN prob_PCR pruebaPCR INT,
    CHANGE COLUMN prob_AnCps pruebaAnticuerpos INT,
    CHANGE COLUMN prob_Ant pruebaAntígenos INT,
    CHANGE COLUMN prob_El pruebaElisa INT,
    CHANGE COLUMN prob_desc pruebaDesconocida INT;
    
#-------------------------------------------------------------------------------------
#	CREACIÓN DE LA CLAVE FORÁNEA ENTRE LAS TABLAS DatosCovid y Población por el campo común
#-------------------------------------------------------------------------------------
ALTER TABLE DatosCovid
	ADD FOREIGN KEY (provinciaISO) REFERENCES Población (ProvinciaISO);
#--------------------------------------------------------------------------------------------
#	DICCIONARIO DE DATOS
#--------------------------------------------------------------------------------------------
# dígito 			  = [ 0 | 1 | 2 | 3 | 4 | 5 | 6  | 7 | 8 |9 ]													*dígitos del sistema numérico*
# vocalMinúscula 	  = [ a | á | e | é | i | í | o | ó | u | ú | ü ]												*vocales minúsculas, sin y con tilde, y con diéresis*
# vocalMayúscula	  = [ A | Á | E | É | I | Í | O | Ó | U | Ú | Ü ]												*vocales mayúsculas, sin y con tilde, y con diéresis*
# consonanteMinúscula = [ b | c | d | f | g | h | j | k | l | m | n | ñ | p | q | r | s | t | v | w | x | y | z ]	*consonantes minúsculas*
# consonanteMinúscula = [ B | C | D | F | G | H | J | K | L | M | N | Ñ | P | Q | R | S | T | V | W | X | Y | Z ]	*consonantes mayúsculas*
# espacio			  = ' '																							*separación entre palabras*
# letraMinúscula = [ vocalMinúscula | consonanteMinúscula ]															*letras minúsculas como unión entre vocales y consonantes en minúscula*
# letraMayúscula = [ vocalMayúscula | consonanteMayúscula ]															*letras mayúsculas como unión entre vocales y consonantes en mayúscula*
# letra 	 = [ letraMinúscula | letraMayúscula | espacio ]																*alfabeto completo en minúscula y en mayúsculas, y con espacio de separación*
# alfanumérico 	 = [ letra | dígito | @ ]																					*unión entre el total de letras más espacio y dígitos*
#------------------------------------------------------------------------------------------------------
#			TABLA 'DatosCovid'
#------------------------------------------------------------------------------------------------------
# DATOSCOVID 	= {datosCovid}						* Información sobre	las distintas pruebas de Covid	*
# datosCovid 		= @provinciaISO + @fecha + casos + pruebaPCR + pruebaAnticuerpos + pruebaAntígenos + pruebaElisa + pruebaDesconocida
#															* Información por provincia y fecha de las pruebas de Covid realizadas *
# ProvinciaISO 		= 1{ letraMayúscula }2					* Código ISO de la provincia			*
# fecha				= 4{ dígito }4-2{ dígito }2-2{ dígito }	* Año, fecha y día de los datos de las pruebas Covid *
# casos				= 1{ dígito }7							* Número de personas infectadas *
# pruebaPCR			= 1{ dígito }7							* Número de pruebas PCR realizadas *
# pruebaAnticuerpos = 1{ dígito }7							* Número de pruebas de Anticuerpos del Covid realizadas *
# pruebaAntígenos	= 1{ dígito }7							* Número de pruebas de Antígenos del Covid realizadas *
# pruebaElisa		= 1{ dígito }7							* Número de pruebas de tipo Elisa realizadas *
# pruebaDesconocida = 1{ dígito }7							* Número de otro tipo de pruebas realizadas *
#------------------------------------------------------------------------------------------------------
#			TABLA 'Poblacion'
#------------------------------------------------------------------------------------------------------
# POBLACION 	= {Poblacion}						* Información sobre la población sometida a las pruebas Covid		*
# Poblacion 	= @ProvinciaISO + Nombre + @Sexo + @Periodo + Total		* Información las pruebas Covid por provincia, sexo y año *
# ProvinciaISO 	= 1{ letraMayúscula }2					* Código ISO de la provincia			*
# Nombre		= 1{ letra } 20						* Nombre de la provincia			*
# Sexo			= 1{ letra }7						* Especificación de si Mujeres u Hombres	*
# Periodo		= 1{ dígito }4						* Año en que se realizó la prueba			*
# Total			= 1{ dígito }8						* Número de individuos sobre el que se realizó la prueba *
#------------------------------------------------------------------------------------------------------
