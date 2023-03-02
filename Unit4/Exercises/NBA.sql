#--------------------------------------------------------------------------------------------
#	CREACIÓN Y USO DE LA BASE DE DATOS 'NBA'
#--------------------------------------------------------------------------------------------
DROP DATABASE IF EXISTS NBA;
CREATE DATABASE NBA;
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
	Nombre VARCHAR ( 20 ) NOT NULL,
    Ciudad VARCHAR ( 20 ) DEFAULT NULL,
    Conferencia VARCHAR ( 4 ) DEFAULT NULL,
    Division VARCHAR ( 9 ) DEFAULT NULL,
    
    PRIMARY KEY ( Nombre )
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
	Codigo INT NOT NULL,
    Nombre VARCHAR ( 30 ) DEFAULT NULL,
    Procedencia VARCHAR ( 30 ) DEFAULT NULL,
    Altura VARCHAR ( 4 ) DEFAULT NULL,
    Peso INT DEFAULT NULL,
    Posicion VARCHAR ( 5 ) DEFAULT NULL,
    Equipo VARCHAR ( 20 ) DEFAULT NULL,
    
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
    jugador INT DEFAULT NOT NULL,
    PuntoXPartido FLOAT DEFAULT NULL,
    AsistenciaXPartido FLOAT DEFAULT NULL,
    TaponesXPartido FLOAT DEFAULT NULL,
    ReboterXPartido FLOAT DEFAULT NULL,
    
    PRIMARY KEY ( temporada, jugador ),
    FOREIGN KEY ( jugador ) REFERENCES Jugadores ()
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
    
    PRIMARY KEY ( Codigo ),
    FOREIGN KEY ( equipoLocal ) REFERENCES Equipos (  ),
    FOREIGN KEY ( equipoVisitante ) REFERENCES Equipos (  )
    );
#--------------------------------------------------------------------------------------------
#	DICCIONARIO DE DATOS
#--------------------------------------------------------------------------------------------
