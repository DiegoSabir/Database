#-----------------------------------------------------------------------------------------------------------------
#	CREA LA BASE DE DATOS LLAMADA 'MateriasDAW'
#-----------------------------------------------------------------------------------------------------------------
drop database if exists MateriaDAW;
Create database if not exists MateriaDAW;
use MateriaDAW;
#-----------------------------------------------------------------------------------------------------------------
#	CREA LAS TABLAS NECESARIAS PARA INCORPORAR LOS DATOS SIGUIENTES
#-----------------------------------------------------------------------------------------------------------------
create Table Materia(
ID int,
Siglas varchar(20),
Codigo varchar(6),
Horas int
);
create Table Sigla(
Siglas varchar(10),
Nombre varchar(100)
);
#-----------------------------------------------------------------------------------------------------------------
#	AÑADIMOS LOS DATOS A LAS TABLAS RECIÉN CREADAS
#-----------------------------------------------------------------------------------------------------------------
insert into Materia (ID, Siglas, Codigo, Horas) values (  1, 'LMARC', 'MP0373', 133 );
insert into Materia (ID, Siglas, Codigo, Horas) values (  2,    'SI', 'MP0483', 186 );
insert into Materia (ID, Siglas, Codigo, Horas) values (  3,    'BD', 'MP0484', 187 );
insert into Materia (ID, Siglas, Codigo, Horas) values (  4,  'Prog', 'MP0485', 240 );
insert into Materia (ID, Siglas, Codigo, Horas) values (  5,    'CD', 'MP0487', 107 );
insert into Materia (ID, Siglas, Codigo, Horas) values (  6, 'DWEBC', 'MP0612', 157 );
insert into Materia (ID, Siglas, Codigo, Horas) values (  7, 'DWEBS', 'MP0613', 175 );
insert into Materia (ID, Siglas, Codigo, Horas) values (  8,   'DAW', 'MP0614',  88 );
insert into Materia (ID, Siglas, Codigo, Horas) values (  9,   'DIW', 'MP0615', 157 );
insert into Materia (ID, Siglas, Codigo, Horas) values ( 10,  'Prox', 'MP0616',  26 );
insert into Materia (ID, Siglas, Codigo, Horas) values ( 11,   'FOL', 'MP0617', 107 );
insert into Materia (ID, Siglas, Codigo, Horas) values ( 12,   'EIE', 'MP0618',  53 );
insert into Materia (ID, Siglas, Codigo, Horas) values ( 13,   'FCT', 'MP0619', 384 );

insert into Sigla (siglas, Nombre) values ( 'LMARC', 'Linguaxes de marcas e sistemas de xestión empresarial' );
insert into Sigla (siglas, Nombre) values (    'SI', 'Sistemas Informáticos'                                 );
insert into Sigla (siglas, Nombre) values (    'BD', 'Bases de Datos'                                        );
insert into Sigla (siglas, Nombre) values (  'Prog', 'Programación'                                          );
insert into Sigla (siglas, Nombre) values (    'CD', 'Contornos de Desenvolvemento'                          );
insert into Sigla (siglas, Nombre) values ( 'DWEBC', 'Desenvolvemento Web en Contorno Cliente'               );
insert into Sigla (siglas, Nombre) values ( 'DWEBS', 'Desenvolvemento Web en Contorno Servidor'              );
insert into Sigla (siglas, Nombre) values (   'DAW', 'Despregamento de Aplicacións Web'                      );
insert into Sigla (siglas, Nombre) values (   'DIW', 'Deseño de Interfaces Web'                              );
insert into Sigla (siglas, Nombre) values (  'Prox', 'Proxecto de desenvolvemento de aplicacións web'        );
insert into Sigla (siglas, Nombre) values (   'FOL', 'Formación e orientación laboral'                       );
insert into Sigla (siglas, Nombre) values (   'EIE', 'Empresa e iniciativa emprendedora'                     );
insert into Sigla (siglas, Nombre) values (   'FCT', 'Formación en centros de traballo'                      );

#-----------------------------------------------------------------------------------------------------------------
#	MOSTRAMOS AHORA LOS DATOS DE AMBAS TABLAS UNIDOS
#-----------------------------------------------------------------------------------------------------------------
select * from Materia natural join Sigla;
select sum(Horas) as "Horas totales" from Materia;
#-----------------------------------------------------------------------------------------------------------------
#                     AÑADIR
#-----------------------------------------------------------------------------------------------------------------
# - Añadir columna CicloFormativo en la tabla Sigla:
alter table Materia
	ADD COLUMN CicloFormativo varchar (10);
	describe Materia;
    
# - Añadir columna CicloFormativo en la tabla Sigla al principio:
alter table Materia
	ADD COLUMN CicloFormativo varchar (10) FIRST;
    describe Materia;

# - Añadir columna CicloFormativo en la tabla Sigla tras codigo:
alter table Materia
	ADD COLUMN CicloFormativo varchar (10) AFTER Codigo;
	describe Materia;
    
# - Añadir columna CicloFormativo en la tabla Materia antes del campo codigo:
alter table Materia
	ADD COLUMN CicloFormativo varchar (10) AFTER Siglas;
	describe Materia;

# - Añadir columna indice en el atributo 'nombre' de la tabla Sigla:
alter table Sigla
	ADD INDEX indice (nombre);
	describe Sigla;
    
# - Crear clave llamada nombreClave sobre el atributo 'nombre':
alter table Sigla
	ADD KEY nombreClave (nombre);
show keys from Sigla;

# - Crear clave primaria ID en Materia y Siglas en Sigla:
alter table Materia
	ADD PRIMARY KEY (ID);

alter table Sigla
	ADD PRIMARY KEY (Siglas);
    
# - Modificar los valores de Código de la tabla Materia para que sean únicos:
alter table Materia
	ADD UNIQUE KEY (Codigo);

# - Añadir una clave foránea entre las tablas Materia y Sigla:
alter table Materia
	ADD FOREIGN KEY (Siglas) REFERENCES Sigla(Siglas);
    describe Materia;

# - Añadir una comprobación en el campo horas de la tabla Materia:
alter table Materia
	ADD CHECK (horas > 0);

# - Añadir una comprobación de que las siglas pertenecen a un conjunto de valores de la tabla Materia:
alter table Materia
	ADD CHECK (siglas IN ("LMARC", "SI", "BD", "PROG", "CD", "DWEBC", "DWEBS", "DAW", "DIW", "Prox", "FOL", "EIE", "FCT"));


# - Borrar columna CicloFormativo de la tabla Materia:
alter table Materia
	DROP CicloFormativo;

# - Borrar clave primaria de la tabla Materia:
alter table Materia
	DROP PRIMARY KEY;
    
# - Cambiar el nombre de la tabla materia por modulo:
alter table Materia
	RENAME Modulo;
