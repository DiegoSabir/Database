# ----------------------------------------------------------------------------------------------------------
#	En la Base de Datos ConcellosGalicia haz, al menos, una transacción para agregar datos con, al menos,
# 	tres puntos de restauración.
#	Provoca que haya un error tras el primer punto de restauración y otro tras el último punto de restauración.
#	
#	Ejecuta el código de creación de tablas y agregación de datos, habrá un error en algún punto tras el primer
#	punto de restauración: restaura desde ese punto, muestra los datos y copia los INSERT que consideres.
#
#	Ejecuta nuevamente las líneas que has incorporado y el sistema volverá a fallar tras el tercer punto de restauración
#	haz nuevamente un proceso similar al paso anterior.
#
#	Ahora haz este mismo ejercicio empleando bloqueo de tablas: procura bloquear las cuatro tablas. ¿ Cuál te parece más sencillo?
# ----------------------------------------------------------------------------------------------------------
#	Escribe a continuación el código que emplearías: sólo las tablas Provincias, Comarcas y Concellos.

# En cuanto a sencillez la segunda parte. 
START TRANSACTION;
	SAVEPOINT PuntoUno;
	INSERT INTO ConcellosGalicia(nombre, superficie) VALUES("Vigo", 1000);
    INSERT INTO ConcellosGalicia(nombre, superficie) VALUES("Baiona", 7000);
    
    SAVEPOINT PuntoDos;
    INSERT INTO ConcellosGalicia(nombre, superficie) VALUES("Nigran", 2000);
	INSERT INTO ConcellosGalicia(nombre, superficie) VALUES("", 5000); -- ERROR: Porriño --> ""
    
    SAVEPOINT PuntoDos;
	INSERT INTO ConcellosGalicia(nombre, superficie) VALUES("Redondela", 6000);
	INSERT INTO ConcellosGalicia(nombre, superficie) VALUES("Pontevedra", 0); -- ERROR: 9000 --> 0
COMMIT; -- Confirmacion de los datos introducidos
SELECT * FROM ConcellosGalicia;

# --------------------------------------------------------------------------------------------------------------------------------------

ROLLBACK TO PuntoDos;
	INSERT INTO ConcellosGalicia(nombre, superficie) VALUES("Nigran", 2000);
	INSERT INTO ConcellosGalicia(nombre, superficie) VALUES("Porriño", 5000);
    SAVEPOINT PuntoTres;
	INSERT INTO ConcellosGalicia(nombre, superficie) VALUES("Redondela", 6000);
	INSERT INTO ConcellosGalicia(nombre, superficie) VALUES("Pontevedra", 0);
COMMIT;
SELECT * FROM ConcellosGalicia;

# --------------------------------------------------------------------------------------------------------------------------------------
#

ROLLBACK TO PuntoTres;
	INSERT INTO ConcellosGalicia(nombre, superficie) VALUES("Redondela", 1000);
	INSERT INTO ConcellosGalicia(nombre, superficie) VALUES("Pontevedra", 9000);
COMMIT;
SELECT * FROM ConcellosGalicia;

# --------------------------------------------------------------------------------------------------------------------------------------
# --------------------------------------------------------------------------------------------------------------------------------------
# --------------------------------------------------------------------------------------------------------------------------------------

LOCK TABLES ConcellosGalicia WRITE;
	INSERT INTO ConcellosGalicia(nombre, superficie) VALUES ("Vigo", 1000);
    INSERT INTO ConcellosGalicia(nombre, superficie) VALUES ("Nigran", 1000);
    INSERT INTO ConcellosGalicia(nombre, superficie) VALUES ("Redondela", 1000);
    INSERT INTO ConcellosGalicia(nombre, superficie) VALUES ("Baiona", 1000);
UNLOCK TABLES;
SELECT * FROM ConcellosGalicia;

# --------------------------------------------------------------------------------------------------------------------------------------

LOCK TABLES ComarcasGalicia WRITE;
	INSERT INTO ComarcasGalicia(nombre, Comarca) VALUES ("Tuy", "1");
    INSERT INTO ComarcasGalicia(nombre, Comarca) VALUES ("Ourense", "2");
    INSERT INTO ComarcasGalicia(nombre, Comarca) VALUES ("Lugo", "3");
    INSERT INTO ComarcasGalicia(nombre, Comarca) VALUES ("Santiago de Compostela", "4");
UNLOCK TABLES;
SELECT * FROM ComarcasGalicia;

# --------------------------------------------------------------------------------------------------------------------------------------

LOCK TABLES ProvinciasGalicia WRITE;
	INSERT INTO ProvinciasGalicia(nombre) VALUES("Pontevedra");
    INSERT INTO ProvinciasGalicia(nombre) VALUES("Pontevedra");
    INSERT INTO ProvinciasGalicia(nombre) VALUES("Pontevedra");
    INSERT INTO ProvinciasGalicia(nombre) VALUES("Pontevedra");
UNLOCK TABLES;
SELECT * FROM ProvinciasGalicia;