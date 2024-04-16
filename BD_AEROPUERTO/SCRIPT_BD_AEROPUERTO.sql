DROP TABLE tbl_cliente;
CREATE TABLE tbl_cliente (
cod_cliente serial not null primary key,
	nombres varchar(255),
	apellidos varchar(255),
	usuario varchar(255),
	clave varchar(255),
	fecha_creacion timestamptz,
	fecha_modificacion timestamptz,
	usuario_crea varchar(255),
	usuario_modifica varchar(255)
);
DROP TABLE tbl_empleado;
CREATE TABLE tbl_empleado (
cod_empleado serial not null primary key,
	nombres varchar(255),
	apellidos varchar(255),
	area varchar(255),
	puesto varchar(255),
	usuario varchar(255),
	clave varchar(255),
	fecha_creacion timestamptz,
	fecha_modificacion timestamptz,
	usuario_crea varchar(255),
	usuario_modifica varchar(255)
);
DROP TABLE tbl_tripulacion;
CREATE TABLE tbl_tripulacion (
cod_tripulacion serial not null primary key,
	piloto varchar(255),
	copiloto varchar(255),
	ingeniero_de_vuelo varchar(255),
	tripulante_de_cabina1 varchar(255),
	tripulante_de_cabina2 varchar(255),
	tripulante_de_cabina3 varchar(255),
	fecha_creacion timestamptz,
	fecha_modificacion timestamptz,
	usuario_crea varchar(255),
	usuario_modifica varchar(255)
);
DROP TABLE tbl_vuelo;
CREATE TABLE tbl_vuelo (
cod_vuelo serial not null primary key,
	cod_cliente varchar(255),
	cod_aeropuerto_salida varchar(255),
	fecha_hora_salida timestamptz,
	cod_aeropuerto_llegada varchar(255),
	fecha_hora_llegada timestamptz,
	cod_avion varchar(255),
	clase_vuelo varchar(255),
	precio_vuelo integer,
	cod_tripulacion varchar(255),
	fecha_creacion timestamptz,
	fecha_modificacion timestamptz,
	usuario_crea varchar(255),
	usuario_modifica varchar(255)
);
DROP TABLE tbl_aeropuerto;
CREATE TABLE tbl_aeropuerto (
cod_aeropuerto serial not null primary key,
	nombre_aeropuerto varchar(255),
	pais_aeropuerto varchar(255),
	ciudad_aeropuerto varchar(255),
	fecha_creacion timestamptz,
	fecha_modificacion timestamptz,
	usuario_crea varchar(255),
	usuario_modifica varchar(255)
);
DROP TABLE tbl_aerolinea;
CREATE TABLE tbl_aerolinea (
cod_aerolinea serial not null primary key,
	nombre_aerolinea varchar(255),
	pais_origen varchar(255),
	fecha_creacion timestamptz,
	fecha_modificacion timestamptz,
	usuario_crea varchar(255),
	usuario_modifica varchar(255)
);
DROP TABLE tbl_avion;
CREATE TABLE tbl_avion (
cod_avion serial not null primary key,
	nombre_modelo varchar(255),
	fabricante varchar(255),
	numero_serie varchar(255),
	capacidad_pasajeros varchar(255),
	cod_aerolinea varchar(255),
	fecha_creacion timestamptz,
	fecha_modificacion timestamptz,
	usuario_crea varchar(255),
	usuario_modifica varchar(255)
);
DROP TABLE tbl_equipaje;
CREATE TABLE tbl_equipaje (
cod_equipaje serial not null primary key,
	cod_cliente varchar(255),
	cant_maleta integer,
	peso real,
	fecha_creacion timestamptz,
	fecha_modificacion timestamptz,
	usuario_crea varchar(255),
	usuario_modifica varchar(255)
);