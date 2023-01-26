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

#--------------------------------------------------------------------------------------------
#	DICCIONARIO DE DATOS
#--------------------------------------------------------------------------------------------
