#--------------------------------------------------------------------------------------------
#	CREACIÓN Y USO DE LA BASE DE DATOS 'Jardineria'
#--------------------------------------------------------------------------------------------
DROP DATABASE IF EXISTS Jardineria;
CREATE DATABASE Jardineria;
USE Jardineria;
#--------------------------------------------------------------------------------------------
#	CREACIÓN DE LA TABLA 'oficina'
#--------------------------------------------------------------------------------------------
#		oficinaID			cadena de texto 10, no nulo
#		ciudad				cadena de texto 30, no nulo
#		pais				cadena de texto 50, no nula
#		region				cadena de texto 50, no nula
#		CP					cadena de texto 10, no nula
#		telefono			cadena de texto 20, no nula
#		linea_direccion1	cadena de texto 50, no nulo
#		linea_direccion2	cadena de texto 50, por defecto nulo
#
#		Clave primaria		oficinaID
#--------------------------------------------------------------------------------------------
CREATE TABLE oficina (
  oficinaID TEXT,
  ciudad TEXT ( 30 ) NOT NULL,
  pais TEXT ( 50 ) NOT NULL,
  region TEXT ( 50 ) NOT NULL,
  CP TEXT ( 10 ) NOT NULL,
  telefono TEXT ( 20 ) NOT NULL,
  linea_direccion1 TEXT ( 50 ) NOT NULL,
  linea_direccion2 TEXT ( 50 ) DEFAULT NULL,

  PRIMARY KEY (oficinaID ( 10 ))
  );
#--------------------------------------------------------------------------------------------
#	CREACIÓN DE LA TABLA 'empleado'
#--------------------------------------------------------------------------------------------
#		empleadoID		entero
#		nombre			cadena de caracteres 50
#		apellido1		cadena de caracteres 50
#		apellido2		cadena de caracteres 50, puede no existir para algún empleado
#		extension		cadena de caracteres 10
#		email			cadena de caracteres 100
#		oficina			cadena de caracteres 10
#		jefe			entero, nulo por defecto
#		puesto			cadena de caracteres 50
#
#		Clave primaria		empleadoID
#		clave foránea		oficina		enlace con la tabla oficina
#		clave foránea		jefe		enlace con la tabla empleado		
#--------------------------------------------------------------------------------------------
CREATE TABLE empleado (
  empleadoID INT,
  nombre VARCHAR ( 50 ),
  apellido1 VARCHAR ( 50 ),
  apellido2	VARCHAR ( 50 ), 
  extension VARCHAR ( 10 ),
  email	VARCHAR ( 100 ),
  oficina VARCHAR ( 10 ),
  jefe INT NULL,
  puesto VARCHAR ( 50 ),
  
  PRIMARY KEY ( empleadoID ),
  FOREIGN KEY ( oficina ) REFERENCES oficina ( oficinaID )
  );
#--------------------------------------------------------------------------------------------
#	CREACIÓN DE LA TABLA 'gama_producto'
#--------------------------------------------------------------------------------------------
#		gama				cadena de caracteres 50
#		descripcion_texto	cadena de caracteres
#		descripcion_html	cadena de caracteres
#		imagen				cadena de caracteres 256
#
#		Clave primaria		gama
#--------------------------------------------------------------------------------------------
CREATE TABLE gama_producto (
	gama VARCHAR ( 50 ),
    descripcion_texto TEXT,
    descripcion_html TEXT,
    imagen VARCHAR ( 256 ),
    
    PRIMARY KEY ( gama )
    );
#--------------------------------------------------------------------------------------------
#	CREACIÓN DE LA TABLA 'cliente'
#--------------------------------------------------------------------------------------------
#		clienteID				entero
#		nombre_cliente			cadena de caracteres 50
#		nombre_contacto			cadena de caracteres 30 -> puede no haber
#		apellido_contacto		cadena de caracteres 50 -> puede no haber
#		telefono				cadena de caracteres 15
#		fax						cadena de caracteres 15
#		linea_direccion1		cadena de caracteres 50
#		linea_direccion2		cadena de caracteres 50 -> puede no haber
#		ciudad					cadena de caracteres 50
#		region					cadena de caracteres 50
#		pais					cadena de caracteres 50
#		CP						cadena de caracteres 10
#		representante_ventas	entero -> puede no haber
#		limite_credito			valor decimal (15,2) -> puede no haber
#
#		Clave primaria		clienteID
#		clave foránea		representante_ventas	enlace con la tabla empleado		
#--------------------------------------------------------------------------------------------
CREATE TABLE cliente(
	clienteID INT,
	nombre_cliente VARCHAR ( 50 ),
    nombre_cliente VARCHAR ( 30 ),
    apellido_contacto VARCHAR ( 50 ),
    telefono VARCHAR ( 15 ),
    fax VARCHAR ( 15 ),
    linea_direccion1 VARCHAR ( 50 ),
    linea_direccion2 VARCHAR ( 50 ),
    ciudad VARCHAR ( 50 ),
    region VARCHAR ( 50 ),
    pais VARCHAR ( 50 ),
    CP VARCHAR ( 10 ),
    representante_ventas INT,
    limite_credito DECIMAL ( 15, 2 ),
    
    PRIMARY KEY ( clienteID ),
    FOREIGN KEY ( representante_ventas ) REFERENCES empleado ( empleadoID )
);
#--------------------------------------------------------------------------------------------
#	CREACIÓN DE LA TABLA 'pedido'
#--------------------------------------------------------------------------------------------
#		pedidoID				entero
#		fecha_pedido			fecha
#		fecha_esperada			fecha
#		fecha_entrega			fecha -> puede ser nulo
#		estado					cadena de caracteres 15
#		comentarioa				cadena de caracteres
#		cliente					entero, no nulo
#
#		Clave primaria		pedidoID
#		clave foránea		cliente		enlace con la tabla cliente
#--------------------------------------------------------------------------------------------
CREATE TABLE pedido (
	pedidoID INT,
	fecha_pedido DATE,
	fecha_esperada DATE,
	fecha_entrega DATE NULL,
	estado VARCHAR ( 15 ),
	comentarioa TEXT,
	cliente INT NOT NULL,

PRIMARY KEY ( pedidoID ),
FOREIGN KEY ( cliente ) REFERENCES cliente ( clienteID ) 
);
#--------------------------------------------------------------------------------------------
#	CREACIÓN DE LA TABLA 'PRODUCTO'
#--------------------------------------------------------------------------------------------
#		productoID				cadena de caracteres 15
#		nombre					cadena de caracteres 70
#		gama					cadena de caracteres 50
#		dimensiones				cadena de caracteres 25 -> puede ser nulo
#		proveedor				cadena de caracteres 50 -> puede ser nulo
#		descripcion				cadena de caracteres	-> puede ser nulo
#		cantidad_en_stock		entero pequeño, no nulo
#		precio_venta			numérico 15 y 2 decimales
#		precio_proveedor		numérico 15 y 2 decimales
#
#		Clave primaria		productoID
#		clave foránea		gama		enlace con la tabla gama_producto
#--------------------------------------------------------------------------------------------
CREATE TABLE PRODUCTO(
	productoID VARCHAR ( 15 ),
	nombre VARCHAR ( 70 ),
    gama VARCHAR ( 50 ),
    dimensiones VARCHAR ( 25 ) NULL,
    proveedor VARCHAR ( 50 ) NULL,
    descripcion TEXT NULL,
    cantidad_en_stock TINYINT NOT NULL,
    precio_venta DECIMAL ( 15, 2 ),
    precio_proveedor DECIMAL ( 15, 2 ),
    
    PRIMARY KEY ( productoID ),
    FOREIGN KEY ( gama ) REFERENCES gama_producto ( gama )
);
#--------------------------------------------------------------------------------------------
#	CREACIÓN DE LA TABLA 'detalle_pedido'
#--------------------------------------------------------------------------------------------
#		pedidoID				entero
#		productoID				cadena de caracteres 15
#		cantidad				entero
#		precio_unidad			numérico 15 y 2 decimales
#		linea					entero pequeño, no nulo
#
#		Clave primaria		pedidoID, productoID
#		Clave foránea		pedidoID		enalce con la tabla pedido
#		Clave foránea		productoID		enlace con la tabla producto
#--------------------------------------------------------------------------------------------
CREATE TABLE (
	pedidoID INT,
    productoID VARCHAR ( 15 ),
    cantidad INT, 
    precio_unidad DECIMAL ( 15, 2 ),
    linea TINYINT NOT NULL,
    
    PRIMARY KEY ( pedidoID, productoID ),
    FOREIGN KEY ( pedidoID ) REFERENCES pedido ( pedidoID ),
    FOREIGN KEY ( productoID ) REFERENCES producto ( productoID )
    );
#--------------------------------------------------------------------------------------------
#	CREACIÓN DE LA TABLA 'pago'
#--------------------------------------------------------------------------------------------
#		clienteID				entero
#		forma_pago				cadena de caracteres 40
#		transaccion				cadena de caracteres 50
#		fecha_pago				fecha -> puede ser nulo
#		total					numérico 15 y 2 decimales
#
#		Clave primaria		clienteID, transaccion
#		clave foránea		clienteID		enlace con la tabla cliente
#--------------------------------------------------------------------------------------------
CREATE TABLE pago(
	clienteID INT,
    forma_pago VARCHAR ( 40 ),
    transaccion VARCHAR ( 50 ),
    fecha_pago DATE NULL,
    total DECIMAL ( 15, 2 ),
    
    PRIMARY KEY ( clienteID, transaccion ),
    FOREIGN KEY ( clienteID ) REFERENCES cliente ( clienteID)
    );
#--------------------------------------------------------------------------------------------
#	DICCIONARIO DE DATOS
#--------------------------------------------------------------------------------------------
