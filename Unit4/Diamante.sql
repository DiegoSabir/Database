#--------------------------------------------------------------------------------------------
#	CREACIÓN Y USO DE LA BASE DE DATOS 'Diamantes'
#--------------------------------------------------------------------------------------------
DROP DATABASE IF EXISTS Diamantes;
CREATE DATABASE Diamantes
	CHARACTER SET utf32
	COLLATE utf32_spanish2_ci;
USE Diamantes;
#--------------------------------------------------------------------------------------------
#	CREACIÓN DE LA TABLA 'Diamond'
#--------------------------------------------------------------------------------------------
#		DiamondID		cadena de texto
#		ct				decimal, no nulo		# Unidad de peso del diamante: 1 ct (carat, quilate) equivale a 0,20g
#		cort			cadena de texto			# Corte o tallado, referente a las proporciones de la piedra -> Premium, Very Good, Good, Ideal, Fair
#		col				cadena de texto			# Cuanto más blanco (transparente) más bonito, escaso y valioso -> D (blanco) ... Z (marrón de peor calidad)
#		cla				cadena de texto			# Unidad de medida de diminutas imperfecciones -> VVS1, VVS2, VSI1, VSI2, SI1, SI2, I1, I2, I3
#		deep			decimal flotante		# Profundidad
#		tab				decimal flotante
#		cost			decimal flotante
#		x				decimal flotante
#		y				decimal flotante
#		z				decimal flotante
#
#		Clave primaria		DiamondID
#--------------------------------------------------------------------------------------------
CREATE TABLE Diamond (
  DiamondID TEXT,
  ct FLOAT NOT NULL,
  cort TEXT,
  col TEXT,
  cla TEXT,
  deep FLOAT,
  tab FLOAT,
  cost FLOAT,
  x FLOAT,
  y FLOAT,
  z FLOAT,
  PRIMARY KEY (DiamondID(1))
  );
  
#--------------------------------------------------------------------------------------------
#	CAMBIA EL NOMBRE DE LA TABLA POR Diamante Y
#	MODIFICA LOS ATRIBUTOS PARA QUE FINALMENTE QUEDEN ASÍ:
#--------------------------------------------------------------------------------------------
#
#		DiamondID	->		diamanteID	entero
#		ct			->		quilates	decimal flotante
#		cort		->		tallado		cadena de texto 10
#		col			->		color		cadena de texto  1
#		cla			->		claridad	cadena de texto  5
#		tab			->		tabla		decimal flotante
#		cost		->		precio		decimal flotante
#		x			->		x		decimal flotante
#		y			->		y		decimal flotante
#		z			->		z		decimal flotante
#--------------------------------------------------------------------------------------------
ALTER TABLE Diamond
	RENAME Diamante,
	RENAME COLUMN DiamondID TO diamanteID,
    RENAME COLUMN ct TO quilates,
    RENAME COLUMN cort TO tallado,
    RENAME COLUMN col TO color,
    RENAME COLUMN cla TO claridad,
    RENAME COLUMN tab TO tabla,
    RENAME COLUMN cost TO precio;

ALTER TABLE Diamante
	MODIFY diamanteID INT,
    MODIFY tallado VARCHAR ( 10 ),
    MODIFY color CHAR,
    MODIFY claridad VARCHAR ( 5 );
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
# letra 	 	 = [ letraMinúscula | letraMayúscula | espacio ]													*alfabeto completo en minúscula y en mayúsculas, y con espacio de separación*
# alfanumérico 	 = [ letra | dígito ]																				*unión entre el total de letras más espacio y dígitos*
#------------------------------------------------------------------------------------------------------
#			TABLA 'Diamante'
#------------------------------------------------------------------------------------------------------
#	DIAMANTE = {Diamante}						*Información de las características de los diamantes		*
#	Diamante = @DiamanteID + quilates + tallado + color + claridad + profundidad + tabla + precio + x + y + z
#			  		* Información sobre las características de cada diamante
#	Diamante 	= 1{ dígito }5														* Identificador de cada diamante *
#	quilates 	= dígito.1{dígito}2													* Quilates del diamante, cada uno equivale a 0,20g*
#	tallado		= 1{ letra }10														* Información sobre las proporciones (Premium, Very Good, Good, Ideal, Fair)*
#	color		= letra																* Cuanto más blanco, transparente, más bonito, escaso y valioso (D-blanco, E, ... Y, Z-marrón de peor calidad)*
#	claridad	= 1{ letra }3digito													* Unidad de medida de la pureza (diminutas imperfecciones) (VVS1, VVS2, VSI1, VSI2, SI1, SI2, I1, I2, I3)
#	profundidad = 1{ dígito }2.0{ digito }1											* Porcentaje de profundidad en el tallado, debe oscilar ente 57.5 y 63%*
#	tabla		= 2{ dígito }2.0{ dígito }1											* Define la forma que tiene el diamante a partir de la piedra original*
#	precio		= 3{ dígito }5.0{ dígito }2											* Coste ecónomico*
#	x			= dígito.0{ dígito }2												* Longitud del diamante*
#	y			= dígito.0{ dígito }2												* Anchura del diamante*
#	z			= dígito.0{ dígito }2												* Altura del diamante*