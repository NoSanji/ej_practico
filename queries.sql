//Crea Base de Datos
CRAETE DATABASE `EJ_PRACTICO`

//Crea Tablas
CREATE TABLE `tb_productos`
(
 `id_producto` int NOT NULL AUTO_INCREMENT,
 `pd_nombre`   varchar(50) NOT NULL ,
 `pd_descrip`  varchar(100) NOT NULL ,
 `pd_precio`   int(6) NOT NULL ,

PRIMARY KEY (`id_producto`)
);
CREATE TABLE `tb_productos_sucursales`
(
 `id_sucursal` int NOT NULL ,
 `id_producto` int NOT NULL ,
 `ps_stock`    int(6) NOT NULL ,
);

CREATE TABLE `tb_sucursales`
(
 `id_sucursal`  int NOT NULL ,
 `sc_nombre`    varchar(50) NOT NULL ,
 `sc_direccion` varchar(100) NOT NULL ,

PRIMARY KEY (`id_sucursal`)
);

//Llena Tabla tb_sucursales
INSERT INTO `tb_sucursales`(`sc_nombre`, `sc_direccion`) VALUES ('San Juan','Perlabuena 3344');
INSERT INTO `tb_sucursales`(`sc_nombre`, `sc_direccion`) VALUES ('San Junin','Perlamala 4433');
INSERT INTO `tb_sucursales`(`sc_nombre`, `sc_direccion`) VALUES ('San Justo','BuenaMala 3434');

//Llena Tabla tb_productos
INSERT INTO `tb_productos`(`pd_nombre`, `pd_descripcion`,`pd_precio`) VALUES ('Galletitas Oreo','Pack x64 Galletitas de chocolate rellenas','120');
INSERT INTO `tb_productos`(`pd_nombre`, `pd_descripcion`,`pd_precio`) VALUES ('Aceite Cocinero','Botella de 1,5Lts de Aceite','760');
INSERT INTO `tb_productos`(`pd_nombre`, `pd_descripcion`,`pd_precio`) VALUES ('Papel Higienico','Pack x4 de papel higienico tirple hoja','300');

//Codigo para subir un producto
