#*******************************************************************************************
#	CREACIÓN DE LA BASE DE DATOS ConcellosGalicia_Existencia
#*******************************************************************************************
DROP DATABASE ConcellosGalicia_Existencia;
CREATE DATABASE ConcellosGalicia_Existencia;
USE ConcellosGalicia_Existencia;
#*******************************************************************************************
#	CREACIÓN DE LAS TABLAS DE LA BASE DE DATOS
#*******************************************************************************************
#	CREACIÓN DE LA TABLA ProvinciasGalicia
#		Provincia		entero
#		nombre			cadena de caracteres 20
#
#		Clave primaria		Provincia
#
#		Comprobación de valor NULO y vacío del campo nombre
#*******************************************************************************************
CREATE TABLE ProvinciasGalicia(
	Provincia INT PRIMARY KEY,
    Nombre VARCHAR ( 20 ) NOT NULL
    CHECK (Nombre IS NOT NULL)
    );

#*******************************************************************************************
#	CREACIÓN DE LA TABLA ComarcasGalicia
#		Comarca			entero
#		nombre			cadena de caracteres 30
#		Provincia		entero
#
#		Clave primaria		Comarca
#		Clave foránea		Provincia	->	ProvinciasGalicia( Provincia )
#
#		Comprobación de valor NULO y vacío de los campos nombre
#		Comprobación de valor NULO del campo Provincia
#*******************************************************************************************
CREATE TABLE ComarcasGalicia (
	Comarca INT PRIMARY KEY,
    Nombre VARCHAR ( 30 ) NOT NULL,
    Provincia INT NOT NULL, 
    FOREIGN KEY (Provincia) REFERENCES ProvinciasGalicia ( Provincia )
    );
    
#*******************************************************************************************
#	CREACIÓN DE LA TABLA ConcellosGalicia
#		Concello		entero
#		nombre			cadena de caracteres 30
#		superficie		número decimal
#		comarca			entero
#
#		Clave primaria		Concello
#		Clave foránea		Comarca	->	ComarcasGalicia( Comarca )
#
#		Comprobación de valor NULO y vacío de los campos nombre
#		Comprobación de valor NULO del campo superficie, Comarca
#*******************************************************************************************
CREATE TABLE ConcellosGalicia(
	Concello INT PRIMARY KEY NOT NULL,
    Nombre VARCHAR ( 30 ),
    Superficie DOUBLE NOT NULL,
    Comarca INT NOT NULL,
    FOREIGN KEY ( Comarca ) REFERENCES ComarcasGalicia ( Comarca )
    );
    
#*******************************************************************************************
#	CREACIÓN DE LA TABLA PoblacionGalicia
#		Poblacion		entero	AUTO_INCREMENT
#		Año				entero
#		Concello		entero
#		mujeres			entero
#		hombres			entero
#
#		Clave primaria		Poblacion
#		Clave foránea		Concello	->	ConcellosGalicia( Concello )
#
#		Comprobación de valor NULO y vacío de los campos mujeres, hombres
#		Comprobación de valor NULO del campo Concello
#*******************************************************************************************
CREATE TABLE PoblacionGalicia(
	Poblacion INT PRIMARY KEY AUTO_INCREMENT,
    Año INT,
    Concello INT NOT NULL,
    Mujeres INT NOT NULL,
    Hombres INT NOT NULL,
    FOREIGN KEY ( Concello ) REFERENCES ConcellosGalicia ( Concello)
    );