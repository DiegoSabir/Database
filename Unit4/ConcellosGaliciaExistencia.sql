#*******************************************************************************************
#	CREACIÓN DE LA BASE DE DATOS ConcellosGalicia_Existencia
#*******************************************************************************************
DROP DATABASE ConcellosGalicia_Existencia;
CREATE DATABASE ConcellosGalicia_Existencia
	CHARACTER SET utf32
	COLLATE utf32_spanish2_ci;
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
	Provincia INT AUTO_INCREMENT,
    Nombre VARCHAR ( 20 ) NOT NULL,
    
    PRIMARY KEY ( Provincia ),
    
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
	Comarca INT,
    Nombre VARCHAR ( 30 ),
    Provincia INT,
    
    PRIMARY KEY ( Comarca ),
    FOREIGN KEY (Provincia) REFERENCES ProvinciasGalicia ( Provincia ),
    
    CHECK (Nombre IS NOT NULL),
    CHECK (Provinia IS NOT NULL)
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
	Concello INT,
    Nombre VARCHAR ( 30 ),
    Superficie DOUBLE,
    Comarca INT,
    
    PRIMARY KEY ( Concello ),
    FOREIGN KEY ( Comarca ) REFERENCES ComarcasGalicia ( Comarca ),
    
    CHECK (Nombre IS NOT NULL),
    CHECK (Superficie IS NOT NULL),
    CHECK (Comarca IS NOT NULL)
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
	Poblacion INT AUTO_INCREMENT,
    Año INT,
    Concello INT,
    Mujeres INT,
    Hombres INT,
    
    PRIMARY KEY ( Poblacion ),
    FOREIGN KEY ( Concello ) REFERENCES ConcellosGalicia ( Concello),
    
    CHECK (Mujeres IS NOT NULL),
    CHECK (Hombres IS NOT NULL),
    CHECK (Concello IS NOT NULL)
    );
#*******************************************************************************************
#	DICCIONARIO DE DATOS
#*******************************************************************************************
# dígito 			  = [ 0 | 1 | 2 | 3 | 4 | 5 | 6  | 7 | 8 |9 ]													*dígitos del sistema numérico*
# vocalMinúscula 	  = [ a | á | e | é | i | í | o | ó | u | ú | ü ]												*vocales minúsculas, sin y con tilde, y con diéresis*
# vocalMayúscula	  = [ A | Á | E | É | I | Í | O | Ó | U | Ú | Ü ]												*vocales mayúsculas, sin y con tilde, y con diéresis*
# consonanteMinúscula = [ b | c | d | f | g | h | j | k | l | m | n | ñ | p | q | r | s | t | v | w | x | y | z ]	*consonantes minúsculas*
# consonanteMinúscula = [ B | C | D | F | G | H | J | K | L | M | N | Ñ | P | Q | R | S | T | V | W | X | Y | Z ]	*consonantes mayúsculas*
# espacio			  = ' '																							*separación entre palabras*
# letraMinúscula = [ vocalMinúscula | consonanteMinúscula ]															*letras minúsculas como unión entre vocales y consonantes en minúscula*
# letraMayúscula = [ vocalMayúscula | consonanteMayúscula ]															*letras mayúsculas como unión entre vocales y consonantes en mayúscula*
# letra 	 = [ letraMinúscula | letraMayúscula | espacio ]																*alfabeto completo en minúscula y en mayúsculas, y con espacio de separación*
# alfanumérico 	 = [ letra | dígito ]																					*unión entre el total de letras más espacio y dígitos*
#------------------------------------------------------------------------------------------------------
#			TABLA 'ProvinciasGalicia'
#------------------------------------------------------------------------------------------------------
#	PROVINCIAGALICIA = {ProvinciaGalicia}				* Información de las provincias de Galicia				*
#	ProvinciaGalicia = @Provincia + Nombre				* Información sobre cada provincia de Galicia				*
#	Provincia   = 1{ dígito }1							* Identificador de cada provincia de Galicia, empieza por 10		*
#	Nombre 	    = 1{  letra }20							* Nombre de una provincia de Galicia					*
#------------------------------------------------------------------------------------------------------
#			TABLA 'ComarcasGalicia'
#------------------------------------------------------------------------------------------------------
#	COMARCAGALICIA 	= {ComarcaGalicia}					* Información de las comarcas de Galicia				*
#	ComarcaGalicia	= @Comarca + Nombre + Provincia 	*Información de cada comarca de Galicia				*
#	Comarca		= 1{ dígito }3							* Identificador de cada comarca, empieza por 100			*
#	Nombre		= 1{ letra }30							* Nombre de la Comarca							*
#	Provincia	= 1{ dígito }1							* Identificador de la provincia a la que pertenece la Comarca 		*
#------------------------------------------------------------------------------------------------------
#			TABLA 'ConcellosGalicia'
#------------------------------------------------------------------------------------------------------
#	CONCELLOGALICIA = {ConcelloGalicia}								* Información de los concellos de Galicia				*
#	ConcelloGalicia = @Concello + Nombre + Superficie + @Comarca  	* Información de cada concello de Galicia		*
#	Concello 	= 1{ dígito }3										* Identificador de cada concello, empieza por 1000			*
#	Nombre		= 1{ letra }30										* Nombre de la Concello							*
#	superficie	= 1{ dígito }5.0{ dígito }2  						* km2 del concello							*
#	Comarca		= 1{ dígito }3										* Identificador de la comarca a la que pertenece el concello 		*
#------------------------------------------------------------------------------------------------------
#			TABLA 'PoblaciónGalicia'
#------------------------------------------------------------------------------------------------------
#	POBLACIÓNGALICIA = {PoblaciónGalicia}								* Información de los habitantes de cada concello de Galicia		*
#	PoblaciónGalicia = @Poblacion + Año + Concello + Mujeres + Hombres 	* Habitantes cada concello de Galicia	*
#	Poblacion 	= 1{ dígito }3											* Identificador de cada concello, empieza por 1000			*
#	Año		= 4{ digito }4												* Año del que se guardan los datos
#	Concello 	= 1{ dígito }3											* Identificador del concello del que se guardan los datos		*
#	Mujeres		= 1{ digito }7											* Número de mujeres empadronadas en el concello				*
#	Hombres		= 1{ digito }7											* Número de hombres empadronados en el concello				*
#*******************************************************************************************