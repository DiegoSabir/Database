#-------------------------------------------------------------------------------------
# CREACIÓN DE LA BASE DE DATOS
#-------------------------------------------------------------------------------------
DROP DATABASE IF EXISTS Covid;
CREATE DATABASE Covid;
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
