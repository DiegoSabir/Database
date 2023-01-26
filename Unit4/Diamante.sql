#--------------------------------------------------------------------------------------------
#	CREACIÓN Y USO DE LA BASE DE DATOS 'Diamantes'
#--------------------------------------------------------------------------------------------
DROP DATABASE IF EXISTS Diamantes;
CREATE DATABASE Diamantes;
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
  DiamondID TEXT ( 1 ),
  ct FLOAT NOT NULL,
  cort TEXT ( 1 ),
  col TEXT ( 1 ),
  cla TEXT ( 1 ),
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
RENAME TABLE Diamond TO Diamante;

ALTER TABLE Diamante
	CHANGE COLUMN DiamondID diamanteID INT,
    CHANGE COLUMN ct quilates FLOAT,
    CHANGE COLUMN cort tallado VARCHAR ( 10 ),
    CHANGE COLUMN col color VARCHAR ( 1 ),
    CHANGE COLUMN cla claridad VARCHAR ( 5 ),
    CHANGE COLUMN tab tabla FLOAT,
    CHANGE COLUMN cost precio FLOAT,
    CHANGE COLUMN x x FLOAT,
    CHANGE COLUMN y y FLOAT,
    CHANGE COLUMN z z FLOAT;