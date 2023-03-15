#--------------------------------------------------------------------------------------------
#	CREACIÓN Y USO DE LA BASE DE DATOS 'NBA'
#--------------------------------------------------------------------------------------------
DROP DATABASE IF EXISTS NBA;
CREATE DATABASE NBA
	CHARACTER SET	utf32
	COLLATE			utf32_spanish2_ci;
USE NBA;
#--------------------------------------------------------------------------------------------
#	CREACIÓN DE LA TABLA 'Equipos'
#--------------------------------------------------------------------------------------------
#		Nombre				cadena de texto	20, no nula
#		Ciudad				cadena de texto 20, por defecto nula
#		Conferencia			cadena de texto 4, por defecto nula
#		Division			cadena de texto 9, por defecto nula
#
#		Clave primaria		Nombre
#--------------------------------------------------------------------------------------------
CREATE TABLE Equipos(
	nombre VARCHAR ( 20 ) NOT NULL,
    ciudad VARCHAR ( 20 ) DEFAULT NULL,
    conferencia VARCHAR ( 4 ) DEFAULT NULL,
    division VARCHAR ( 9 ) DEFAULT NULL,
    
    PRIMARY KEY ( nombre )
);
#--------------------------------------------------------------------------------------------
#	CREACIÓN DE LA TABLA 'Jugadores'
#--------------------------------------------------------------------------------------------
#		Codigo				entero, no nulo
#		Nombre				cadena de texto	30, por defecto nula
#		Procedencia			cadena de texto 20, por defecto nula
#		Altura				cadena de texto 4, por defecto nula
#		Peso				entero, por defecto nulo
#		Posicion			cadena de texto 5, por defecto nula
#		Equipo				cadena de texto 20, por defecto nula
#
#		Clave primaria		Codigo
#		Clave foránea		Equipo				a la tabla 'Equipos'
#--------------------------------------------------------------------------------------------
CREATE TABLE Jugadores(
	codigo INT NOT NULL,
    nombre VARCHAR ( 30 ) DEFAULT NULL,
    procedencia VARCHAR ( 20 ) DEFAULT NULL,
    altura VARCHAR ( 4 ) DEFAULT NULL,
    peso INT DEFAULT NULL,
    posicion VARCHAR ( 5 ) DEFAULT NULL,
    equipo VARCHAR ( 20 ) DEFAULT NULL,
    
    PRIMARY KEY ( Codigo ),
    FOREIGN KEY ( Equipo ) REFERENCES Equipos ( Nombre )
);
#--------------------------------------------------------------------------------------------
#	CREACIÓN DE LA TABLA 'Estadísticas'
#--------------------------------------------------------------------------------------------
#		temporada			cadena de texto	5, no nula
#		jugador				entero, por defecto no nulo
#		PuntosXPartido		número float, por defecto nulo
#		AsistenciaXPartido	número float, por defecto nulo
#		TaponesXPartido		número float, por defecto nulo
#		ReboterXPartido		número float, por defecto nulo
#
#		Clave primaria		temporada, jugador
#		Clave foránea		jugador				a la tabla 'Jugadores'
#--------------------------------------------------------------------------------------------
CREATE TABLE Estadísticas(
	temporada VARCHAR ( 5 ) NOT NULL,
    jugador INT NOT NULL,
    PuntoXPartido FLOAT DEFAULT NULL,
    AsistenciaXPartido FLOAT DEFAULT NULL,
    TaponesXPartido FLOAT DEFAULT NULL,
    ReboterXPartido FLOAT DEFAULT NULL,
    
    PRIMARY KEY ( temporada, jugador ),
    FOREIGN KEY ( jugador ) REFERENCES Jugadores ( codigo )
    );
#--------------------------------------------------------------------------------------------
#	CREACIÓN DE LA TABLA 'Partidos'
#--------------------------------------------------------------------------------------------
#		Codigo				entero, no nulo
#		equipoLocal			cadena de texto	20, por defecto nula
#		equipoVisitante		cadena de texto 20, por defecto nula
#		puntosLocal			entero, por defecto nulo
#		puntosVisitante		entero, por defecto nulo
#		temporada			cadena de texto 5, por defecto nula
#
#		Clave primaria		Codigo
#		Clave foranea		equipoLocal			a la tabla 'Equipos'
#							equipoVisitante		a la tabla 'Equipos'
#--------------------------------------------------------------------------------------------
CREATE TABLE Partidos (
	Codigo INT NOT NULL,
	equipoLocal VARCHAR ( 20 ) DEFAULT NULL,
	equipoVisitante VARCHAR ( 20 ) DEFAULT NULL,
    puntosLocal INT DEFAULT NULL,
    puntosVisitante INT DEFAULT NULL,
    temporada VARCHAR ( 5 ) DEFAULT NULL,
    
    PRIMARY KEY ( codigo ),
    FOREIGN KEY ( equipoLocal ) REFERENCES Equipos ( nombre ),
    FOREIGN KEY ( equipoVisitante ) REFERENCES Equipos ( nombre )
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
# letra 	 = [ letraMinúscula | letraMayúscula | espacio | - ]																*alfabeto completo en minúscula y en mayúsculas, y con espacio de separación*
# alfanumérico 	 = [ letra | dígito ]																					*unión entre el total de letras más espacio y dígitos*
#------------------------------------------------------------------------------------------------------
#			TABLA 'equipos'
#------------------------------------------------------------------------------------------------------
# EQUIPOS 	= {equipo}						* Información de los equipos de la NBA		*
# equipo 	= @Nombre + Ciudad + Confencia + Division	* Información de cada equipo de la NBA *
# Nombre 		= 1{ letra }30						* Nombre del equipo de la NBA *
# Ciudad 		= 0{ letra }20						* Nombre de la ciudad donde juega el equipo *
# Conferencia 	= 0{ letra }4					* Divión de los equipos en Este (East) y Oeste (West)*
# División	  	= 0{ letra }9					* Subdivisión de las conferencias*
#--------------------------------------------------------------------------------------------
#			TABLA 'jugadores'
#------------------------------------------------------------------------------------------------------
# JUGADORES = {Jugador}						* Información de los jugadores de la NBA		*
# Jugador 	= @codigo + Nombre + Procedencia + Altura	+ Peso + Posicion + Equipo	* Información de cada jugador de la NBA *
# codigo		= 1{ dígito }3				* identificador del jugador de la NBA *
# Nombre		= 0{ letra }30				* Nombre del jugador de la NBA*
# Procedencia	= 0{ letra }20				* País o ciudad (si es de USA) de donde viene el jugador de la NBA *
# Altura		= dígito - dígito			* Pies - Pulgada (1 pie equivale a  30.48 cm, 1 pulgada equivale a 2.54 cm)*
# Peso			= 1{ dígito }3				* peso en libras del jugador de la NBA (1 libra equivale a unos 0,45kg)*
# Posicion		= 0{ letra }5				* F (Forward-alero), G(Guard-base o escolta), C (Pívot)*
# Equipo		= 1{ letra }30				* Nombre del equipo de la NBA en el que juega*
#------------------------------------------------------------------------------------------------------
#			TABLA 'Estadisticas'
#------------------------------------------------------------------------------------------------------
# ESTADISTICAS 	= {Estadistica}						* Información de puntos, asistencias, tapones y rebotes en los partidos de la NBA		*
# Estadistica  	= @temporada + @jugador + PuntorsXPartido + AsistenciasXPartido + TaponesXPartido + RebotesXPartido	* Información de cada jugador de la NBA *
# temporada	   			= 2{ dígito }2/2{ dígito }			*año/año (años entre los que se celebran los partidos)*
# jugador	   			= 1{ dígito }3						* identificador del jugador de la NBA *
# PuntosXPartido		= 0{ dígito }2.dígito 			* Media de puntos por partido del jugador de la NBA*
# AsistenciasXPartido	= 0{ dígito }2.dígito 			* Media de asistencia por partido del jugador de la NBA*
# TaponesXPartido		= 0{ dígito }2.dígito 			* Media de tapones por partido del jugador de la NBA*
# RebotesXPartido		= 0{ dígito }2.dígito 			* Media de rebotes por partido del jugador de la NBA*
#------------------------------------------------------------------------------------------------------
#			TABLA 'Partidos'
#------------------------------------------------------------------------------------------------------
# PARTIDOS = {Partido}						* Información de los partidos de la NBA		*
# Partido = @codigo + equipoLocal + equipoVisitante + puntosLocal + puntosVisitante + temporada	* Información de cada partido de la NBA *
# codigo			= 1{ dígito }4						* identificador del partido jugado de la NBA*
# equipoLocal 		= 0{ letra }20						* Nombre del equipo local del partido de la NBA *
# equipoVisitante	= 0{ letra }20						* Nombre del equipo visitante del partido de la NBA *
# puntosLocal		= 0{ dígito }3						* Puntos del equipo que juega como local*
# puntosVisitante	= 0{ dígito }3						* Puntos del equipo que juega como visitante*
# temporada			= 2{ dígito }2/2{ dígito }			*año/año (años entre los que se celebran los partidos)*
#------------------------------------------------------------------------------------------------------