#*******************************************************************************************
#	CREACIÓN Y USO DE LA BASE DE DATOS 'CiclosInformatica'
#*******************************************************************************************
DROP DATABASE IF EXISTS CiclosInformatica;
CREATE DATABASE CiclosInformatica
	CHARACTER SET	UTF32
	COLLATE			UTF32_SPANISH2_CI;
USE CiclosInformatica;
#*******************************************************************************************
#	CREACIÓN DE LAS TABLAS DE LA BASE DE DATOS
#*******************************************************************************************
#		TABLA Modulo
#*******************************************************************************************
#		idModulo		int				auto_increment desde 50
#		sigla			varchar(5)
#		codigo			varchar(6)
#		nombre			text
#		horas			int
#		curso			int
#		ciclo			text
#
#		Llave primaria 					->	idModulo
#		Valor único    					->	codigo
#		Comprobación de Valor no nulo	->	sigla, codigo, nombre, horas
#		Comprobación de Valor no vacío	->	sigla, codigo, nombre
#		Comprobación de Valor positivo	->	horas
#		Índice							->	codigo
#*******************************************************************************************
CREATE TABLE Modulo(
	idModulo INT AUTO_INCREMENT,
    sigla VARCHAR ( 5 ),
    codigo VARCHAR ( 6 ),
    nombre VARCHAR ( 50 ),
    horas INT,
    curso INT,
    ciclo VARCHAR ( 50 ),
    
    PRIMARY KEY ( idModulo ),
    #UNIQUE ( codigo ),
    CONSTRAINT siglaNoNulo CHECK ( sigla IS NOT NULL ),
    CONSTRAINT codigoNoNulo CHECK ( codigo IS NOT NULL ),
    CONSTRAINT nombreNoNulo CHECK ( nombre IS NOT NULL ),
    CONSTRAINT horasNoNulo CHECK ( horas IS NOT NULL ),
    
    CONSTRAINT horasNoVacio CHECK ( sigla != ""),
    CONSTRAINT codigoNoVacio CHECK ( codigo != ""),
    CONSTRAINT nombreNoVacio CHECK ( nombre != ""),
    
    INDEX codigoIndice ( codigo )
) AUTO_INCREMENT = 50;
#*******************************************************************************************
#	AÑADIMOS LOS DATOS
#*******************************************************************************************
Insert into Modulo values
("1","FOL","MP0380","Formacion e orientacion laboral","107","1","ASIR"),
("2","FH","MP0371","Fundamentos de hardware","107","1","ASIR"),
("3","ISO","MP0369","Implantación de sistemas operativos","213","1","ASIR"),
("4","LMSXI","MP0373","Linguaxes de marcas e sistemas de xestión de información","133","1","ASIR"),
("5","PAR","MP0370","Planificación e administración de redes","213","1","ASIR"),
("6","XBBDD","MP0372","Xestión de bases de datos","187","1","ASIR"),
("7","ASO","MP0374","Administración de sistemas operativos","140","2","ASIR"),
("8","ASBD","MP0377","Administración de sistemas xestores de bases de datos","70","2","ASIR"),
("9","EIE","MP0381","Empresa e iniciativa emprendedora","53","2","ASIR"),
("10","FCT","MP0382","Formación en centros de traballo","384","2","ASIR"),
("11","IAW","MP0376","Implantación de aplicacións web","122","2","ASIR"),
("12","PROY","MP0379","Proxecto de administración de sistemes informáticos en rede","26","2","ASIR"),
("13","SAD","MP0378","Seguridade e alta dispoñibilidade","105","2","ASIR"),
("14","SRI","MP0375","Servizos de rede e internet","140","2","ASIR"),
("15","BBDD","MP0484","Bases de datos","187","1","DAW"),
("16","CCD","MP0487","Contornos de desenvolvemento","107","1","DAW"),
("17","FOL","MP0617","Formacion e orientacion laboral","107","1","DAW"),
("18","LMSXI","MP0373","Linguaxes de marcas e sistemas de xestión de información","113","1","DAW"),
("19","PRO","MP0485","Programación","240","1","DAW"),
("20","SSII","MP0483","Sistemas Informáticos","186","1","DAW"),
("21","DIIW","MP0615","Diseño de interfaces web","157","2","DAW"),
("22","DWCC","MP0612","Desenvolvemento web en contorno cliente","157","2","DAW"),
("23","DWCS","MP0613","Desenvolvemento web en contorno servidor","157","2","DAW"),
("24","DAW","MP0614","Despregamento de aplicacións web","88","2","DAW"),
("25","EIE","MP0618","Empresa e iniciativa emprendedora","53","2","DAW"),
("26","FCT","MP0619","Formacion en centros de trabajo","384","2","DAW"),
("27","PROY","MP0616","Proxecto de desenvolvemento de aplicacións web","26","2","DAW"),
("28","BBDD","MP0484","Bases de datos","187","1","DAM"),
("29","CCD","MP0487","Contornos de desenvolvemento","107","1","DAM"),
("30","FOL","MP0493","Formacion e orientacion laboral","107","1","DAM"),
("31","LMSXI","MP0373","Linguaxes de marcas e sistemas de xestión de información","113","1","DAM"),
("32","PRO","MP0485","Programación","240","1","DAM"),
("33","SSII","MP0483","Sistemas Informáticos","186","1","DAM"),
("34","ADD","MP0486","Acceso a datos","157","2","DAM"),
("35","DII","MP088","Desenvolvemento de interfaces","140","2","DAM"),
("36","EIE","MP0494","Empresa e iniciativa emprendedora","53","2","DAM"),
("37","FCT","MP0495","Formacion en centros de trabajo","384","2","DAM"),
("38","PSSPP","MP0490","Programación de servizos e procesos","70","2","DAM"),
("39","PMDM","MP0489","Programación multimedia e dispositivos móbiles","123","2","DAM"),
("40","PROY","MP0492","Proxecto de desenvolvemento de aplicacións multiplataforma","26","2","DAM"),
("41","SSXE","MP0491","Sistemas de xestión empresarial","87","2","DAM");
#*******************************************************************************************
#	CREAMOS LOS GRUPOS DE USUARIOS:	Direccion, Alumnado, Profesorado
#		En Alumnado -> AlumnadoDAM, AlumnadoDAW, AlumnadoASIR
#		En Profesorado -> ProfesoradoDAM, ProfesoradoDAW, ProfesoradoASIR
#-------------------------------------------------------------------------------------------
#	DROP ROLE IF EXISTS <Rol1>, <Rol2>, ..., <RolN>;
#	CREATE ROLE 	    <Rol1>, <Rol2>, ..., <RolN>;
#*******************************************************************************************
DROP ROLE IF EXISTS Direccion, Alumnado, Profesorado;			
CREATE ROLE Direccion, Alumnado, Profesorado;

DROP ROLE IF EXISTS AlumnadoDAM, AlumnadoDAW, AlumnadoASIR;			
CREATE ROLE AlumnadoDAM, AlumnadoDAW, AlumnadoASIR;

DROP ROLE IF EXISTS ProfesoradoDAM, ProfesoradoDAW, ProfesoradoASIR;		
CREATE ROLE ProfesoradoDAM, ProfesoradoDAW, ProfesoradoASIR;
#*******************************************************************************************
#	ASIGNAMOS LOS MISMOS PRIVILEGIOS A LOS COMPONENTES DE LOS GRUPOS ALUMNADO Y PROFESORADO
#-------------------------------------------------------------------------------------------
#	GRANT <RolGrupo> TO <RolComponente1>, <RolComponente2>, ..., <RolComponenteN>;
#*******************************************************************************************
GRANT ALL ON Alumnado TO AlumnadoDAM, AlumnadoDAW, AlumnadoASIR; 
GRANT ALL ON Profesorado TO ProfesoradoDAM, ProfesoradoDAW, ProfesoradoASIR; 
#*******************************************************************************************
#	CREAMOS LAS VISTAS ASOCIADAS A CADA CICLO FORMATIVO
#-------------------------------------------------------------------------------------------
#	DROP VIEW IF EXISTS ..., ..., ...;
#	CREATE VIEW ... AS SELECT ...;
#*******************************************************************************************
DROP VIEW IF EXISTS asignaturasDAM, asignaturasDAW, asignaturasASIR;		
CREATE VIEW asignaturasDAM AS SELECT idModulo, sigla, codigo, nombre, horas FROM Modulo 
	WHERE ciclo REGEXP ("DAM");
CREATE VIEW asignaturasDAW AS SELECT idModulo, sigla, codigo, nombre, horas FROM Modulo 
	WHERE ciclo REGEXP ("DAW");
CREATE VIEW asignaturasASIR AS SELECT idModulo, sigla, codigo, nombre, horas FROM Modulo 
	WHERE ciclo REGEXP ("ASIR");
#*******************************************************************************************
#	ASIGNAMOS LOS PERMISOS A DIRECCIÓN Y A LOS GRUPOS DEL PROFESORADO
#-------------------------------------------------------------------------------------------
#	GRANT <permiso> ON <tabla> TO <Rol1>, <Rol2>, ..., <Rol3>;
#*******************************************************************************************		
GRANT ALL ON asignaturasDAM TO Direccion, ProfesoradoDAM;
GRANT ALL ON asignaturasDAW TO Direccion, ProfesoradoDAW;
GRANT ALL ON asignaturasASIR TO Direccion, ProfesoradoASIR;
#*******************************************************************************************
#	CREAMOS LOS USUARIOS DE DIRECCIÓN CON DEFAULT ROLE
#-------------------------------------------------------------------------------------------
#	DROP USER IF EXISTS <direccion1>, <direccion2>, ..., <direccionN>;
#	CREATE USER <direccion1> IDENTIFIED BY 'dir' DEFAULT ROLE 'Rol1';
#	...........................
#	CREATE USER <direccionN> IDENTIFIED BY 'dir' DEFAULT ROLE 'Rol1';
#*******************************************************************************************
DROP USER IF EXISTS Director, Vicedirector, Secretario, JefeEstudiosDiurno, JefeEstudiosNocturno;
CREATE USER Director IDENTIFIED BY "dir" DEFAULT ROLE Direccion;
CREATE USER Vicedirector IDENTIFIED BY "vic" DEFAULT ROLE Direccion;
CREATE USER Secretario IDENTIFIED BY "sec" DEFAULT ROLE Direccion;
CREATE USER JefeEstudiosDiurno IDENTIFIED BY "jed" DEFAULT ROLE Direccion;
CREATE USER JefeEstudiosNocturno IDENTIFIED BY "jed" DEFAULT ROLE Direccion;
#*******************************************************************************************
#	CREAMOS LOS USUARIOS DEL PROFESORADO CON DEFAULT ROLE
#-------------------------------------------------------------------------------------------
#	DROP USER IF EXISTS <profesor1>, <profesor2>, ..., <profesorN>;
#	CREATE USER <profesor1> IDENTIFIED BY 'pro' DEFAULT ROLE 'Rol2';
#	...........................
#	CREATE USER <profesorN> IDENTIFIED BY 'pro' DEFAULT ROLE 'Rol2';
#*******************************************************************************************
DROP USER IF EXISTS 
ProfesorDAM1, ProfesorDAM2, ProfesorDAM3, ProfesorDAM4, ProfesorDAM5,
ProfesorDAW1, ProfesorDAW2, ProfesorDAW3, ProfesorDAW4, ProfesorDAW5,
ProfesorASIR1, ProfesorASIR2, ProfesorASIR3, ProfesorASIR4, ProfesorASIR5;

CREATE USER ProfesorDAM1 IDENTIFIED BY "pro" DEFAULT ROLE "ProfesoradoDAM";
CREATE USER ProfesorDAM2 IDENTIFIED BY "pro" DEFAULT ROLE "ProfesoradoDAM";
CREATE USER ProfesorDAM3 IDENTIFIED BY "pro" DEFAULT ROLE "ProfesoradoDAM";
CREATE USER ProfesorDAM4 IDENTIFIED BY "pro" DEFAULT ROLE "ProfesoradoDAM";
CREATE USER ProfesorDAM5 IDENTIFIED BY "pro" DEFAULT ROLE "ProfesoradoDAM";

CREATE USER ProfesorDAW1 IDENTIFIED BY "pro" DEFAULT ROLE "ProfesoradoDAW";
CREATE USER ProfesorDAW2 IDENTIFIED BY "pro" DEFAULT ROLE "ProfesoradoDAW";
CREATE USER ProfesorDAW3 IDENTIFIED BY "pro" DEFAULT ROLE "ProfesoradoDAW";
CREATE USER ProfesorDAW4 IDENTIFIED BY "pro" DEFAULT ROLE "ProfesoradoDAW";
CREATE USER ProfesorDAW5 IDENTIFIED BY "pro" DEFAULT ROLE "ProfesoradoDAW";

CREATE USER ProfesorASIR1 IDENTIFIED BY "pro" DEFAULT ROLE "ProfesoradoASIR";
CREATE USER ProfesorASIR2 IDENTIFIED BY "pro" DEFAULT ROLE "ProfesoradoASIR";
CREATE USER ProfesorASIR3 IDENTIFIED BY "pro" DEFAULT ROLE "ProfesoradoASIR";
CREATE USER ProfesorASIR4 IDENTIFIED BY "pro" DEFAULT ROLE "ProfesoradoASIR";
CREATE USER ProfesorASIR5 IDENTIFIED BY "pro" DEFAULT ROLE "ProfesoradoASIR";
#*******************************************************************************************
#	DAMOS LOS RESPECTIVOS PRIVILEGIOS A LOS GRUPOS DEL ALUMNADO
#-------------------------------------------------------------------------------------------
#	GRANT <permiso> ON <tabla> TO <Rol1>;
#	---------------------
#	GRANT <permiso> ON <tabla> TO <RolN>;
#*******************************************************************************************
GRANT SELECT ON asignaturasDAM TO AlumnadoDAM;
GRANT SELECT ON asignaturasDAW TO AlumnadoDAW;
GRANT SELECT ON asignaturasASIR TO AlumnadoASIR;
#*******************************************************************************************
#	CREAMOS LOS USUARIOS, ASIGNÁNDOLES LOS ROLES CORRESPONDIENTES
#-------------------------------------------------------------------------------------------
#	DROP USER IF EXISTS <usuario1>, <usuario2>, ..., <usuarioN>;
#	CREATE USER <usuario1> IDENTIFIED BY 'use' DEFAULT ROLE 'Rol3';
#	...........................
#	CREATE USER <usuarioN> IDENTIFIED BY 'use' DEFAULT ROLE 'Rol3';
#*******************************************************************************************
#*******************************************************************************************
DROP USER IF EXISTS 
AlumnoDAM1, AlumnoDAM2, AlumnoDAM3, AlumnoDAM4, AlumnoDAM5,
AlumnoDAW1, AlumnoDAW2, AlumnoDAW3, AlumnoDAW4, AlumnoDAW5,
AlumnoASIR1, AlumnoASIR2, AlumnoASIR3, AlumnoASIR4, AlumnoASIR5;

CREATE USER AlumnoDAM1 IDENTIFIED BY "alm" DEFAULT ROLE "AlumnadoDAM";
CREATE USER AlumnoDAM2 IDENTIFIED BY "alm" DEFAULT ROLE "AlumnadoDAM";
CREATE USER AlumnoDAM3 IDENTIFIED BY "alm" DEFAULT ROLE "AlumnadoDAM";
CREATE USER AlumnoDAM4 IDENTIFIED BY "alm" DEFAULT ROLE "AlumnadoDAM";
CREATE USER AlumnoDAM5 IDENTIFIED BY "alm" DEFAULT ROLE "AlumnadoDAM";

CREATE USER AlumnoDAW1 IDENTIFIED BY "alm" DEFAULT ROLE "AlumnadoDAW";
CREATE USER AlumnoDAW2 IDENTIFIED BY "alm" DEFAULT ROLE "AlumnadoDAW";
CREATE USER AlumnoDAW3 IDENTIFIED BY "alm" DEFAULT ROLE "AlumnadoDAW";
CREATE USER AlumnoDAW4 IDENTIFIED BY "alm" DEFAULT ROLE "AlumnadoDAW";
CREATE USER AlumnoDAW5 IDENTIFIED BY "alm" DEFAULT ROLE "AlumnadoDAW";

CREATE USER AlumnoASIR1 IDENTIFIED BY "alm" DEFAULT ROLE "AlumnadoASIR";
CREATE USER AlumnoASIR2 IDENTIFIED BY "alm" DEFAULT ROLE "AlumnadoASIR";
CREATE USER AlumnoASIR3 IDENTIFIED BY "alm" DEFAULT ROLE "AlumnadoASIR";
CREATE USER AlumnoASIR4 IDENTIFIED BY "alm" DEFAULT ROLE "AlumnadoASIR";
CREATE USER AlumnoASIR5 IDENTIFIED BY "alm" DEFAULT ROLE "AlumnadoASIR";
#*******************************************************************************************
#*******************************************************************************************






