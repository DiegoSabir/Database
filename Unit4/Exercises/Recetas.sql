#--------------------------------------------------------------------------------------------
#	CREACIÓN Y USO DE LA BASE DE DATOS 'Recetas'
#--------------------------------------------------------------------------------------------
DROP DATABASE IF EXISTS Recetas;
CREATE DATABASE Recetas
	CHARACTER SET utf32
	COLLATE utf32_spanish2_ci;
USE Recetas;

#--------------------------------------------------------------------------------------------
#	CREACIÓN DE LA TABLA 'Recetas'
#--------------------------------------------------------------------------------------------
#		idReceta			entero
#		Categoría			cadena de  30 caracteres, no nula
#		Nombre				cadena de  90 caracteres, no nula
#		Valoración			número de   3 cifras y un decimal
#		Dificultad			cadena de  10 caracteres
#		Comensales			entero
#		Tiempo				cadena de  10 caracteres
#		Tipo				cadena de  15 caracteres
#		Link_receta			cadena de 150 caracteres, no nula
#		Num_comentarios		entero, no nulo
#		Num_revisiones		entero, no nulo
#		Fecha_modificación	fecha
#		Ingredientes		cadena de 1500 caracteres
#
#		Clave primaria		->	idReceta
#--------------------------------------------------------------------------------------------
CREATE TABLE Recetas(
	idReceta INT,
    Categoria VARCHAR ( 30 ) NOT NULL,
    Nombre VARCHAR ( 90 ) NOT NULL,
    Valoración DECIMAL ( 3, 1),
    Dificultad VARCHAR ( 10 ),
    Comensales INT,
    Tiempo VARCHAR ( 10 ),
    Tipo VARCHAR ( 15 ),
    Link_receta VARCHAR ( 150 ) NOT NULL,
    Num_comentarios INT NOT NULL,
    Num_revisiones INT NOT NULL,
    Feha_modificación DATE,
    Ingredientes VARCHAR ( 1500 ),
    
    PRIMARY Key ( idReceta )
);
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
# alfanumérico 	 = [ letra | dígito | @ ]																			*unión entre el total de letras más espacio y dígitos*
# fecha 		 = 4{ dígito }4 - 2{ dígito }2 - 2{ dígito }2														*fecha con formato año-mes-día*
#------------------------------------------------------------------------------------------------------
#			TABLA 'Recetas'
#------------------------------------------------------------------------------------------------------
#	RECETAS = {receta}						*Información de recetas de cocina		*
#	receta = @idReceta + Categoria + Nombre + Valoracion + Dificultad + Comensales + Tiempo + Tipo + Link_receta + Num_comensales + Num_revisiones + Fecha_modificacion + Ingredientes
#			  		* Información sobre cada receta de cocina										*
#	idReceta  			= 1{ digito }5			* Identificador de cada receta de cocina					*
#	Categoria  			= 1{ letra }30			* Categoría en la que se encuadra cada receta				*
#	Nombre 	    		= 1{letra}30			* Nombre descriptivo de cada receta							*
#	Valoracion			= 1{ digito }3.digito	* Puntuación sobre la receta								*
#	Dificultad			= 1{ letra }10			* Nivel de complejidad de la receta							*
#	Comensales			= 1{ digito }2			* Número de comensales para los que es la receta			*
#	Tiempo				= 1{ letra }10			* Duración aproximada en minutos de la realización			*
#	Tipo				= 1{ letra }15			* Tipo en el que se encuadra la receta						*
#	Link_receta			= 1{ alfanumérico }150	* Página web sobre con información sobre la receta			*
#	Num_comentarios		= 1{ digito }10			* Número de comentarios de la receta						*
#	Num_revisiones		= 1{ digito }10 		* Número de revisiones de la receta							*
#	Fecha_modificacion	= fecha					* Fecha de la última modificación							*
#	Ingredientes		= 1{ letra }1500		* Ingredientes asociados a la receta						*
#------------------------------------------------------------------------------------------------------