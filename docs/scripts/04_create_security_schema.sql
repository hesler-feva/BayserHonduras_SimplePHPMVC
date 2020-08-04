use bayserhonduras;
CREATE TABLE `usuario` (
  `usercod` bigint(10) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(80) DEFAULT NULL,
  `username` varchar(80) DEFAULT NULL,
  `userpswd` varchar(128) DEFAULT NULL,
  `userfching` datetime DEFAULT NULL,
  `userpswdest` char(3) DEFAULT NULL,
  `userpswdexp` datetime DEFAULT NULL,
  `userest` char(3) DEFAULT NULL,
  `useractcod` varchar(128) DEFAULT NULL,
  `userpswdchg` varchar(128) DEFAULT NULL,
  `usertipo` char(3) DEFAULT NULL COMMENT 'Tipo de Usuario, Normal, Consultor o Cliente',
  PRIMARY KEY (`usercod`),
  UNIQUE KEY `useremail_UNIQUE` (`useremail`),
  KEY `usertipo` (`usertipo`,`useremail`,`usercod`,`userest`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `roles` (
  `rolescod` varchar(15) NOT NULL,
  `rolesdsc` varchar(45) DEFAULT NULL,
  `rolesest` char(3) DEFAULT NULL,
  PRIMARY KEY (`rolescod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `roles_usuarios` (
  `usercod` bigint(10) NOT NULL,
  `rolescod` varchar(15) NOT NULL,
  `roleuserest` char(3) DEFAULT NULL,
  `roleuserfch` datetime DEFAULT NULL,
  `roleuserexp` datetime DEFAULT NULL,
  PRIMARY KEY (`usercod`,`rolescod`),
  KEY `rol_usuario_key_idx` (`rolescod`),
  CONSTRAINT `rol_usuario_key` FOREIGN KEY (`rolescod`) REFERENCES `roles` (`rolescod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_rol_key` FOREIGN KEY (`usercod`) REFERENCES `usuario` (`usercod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `funciones` (
  `fncod` varchar(15) NOT NULL,
  `fndsc` varchar(45) DEFAULT NULL,
  `fnest` char(3) DEFAULT NULL,
  `fntyp` char(3) DEFAULT NULL,
  PRIMARY KEY (`fncod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `funciones_roles` (
  `rolescod` varchar(15) NOT NULL,
  `fncod` varchar(15) NOT NULL,
  `fnrolest` char(3) DEFAULT NULL,
  `fnexp` datetime DEFAULT NULL,
  PRIMARY KEY (`rolescod`,`fncod`),
  KEY `rol_funcion_key_idx` (`fncod`),
  CONSTRAINT `funcion_rol_key` FOREIGN KEY (`rolescod`) REFERENCES `roles` (`rolescod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rol_funcion_key` FOREIGN KEY (`fncod`) REFERENCES `funciones` (`fncod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `productos` (
  `codprd` BIGINT(18) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(70) NOT NULL,
  `dscprd` VARCHAR(255) NOT NULL,
  `skuprd` varchar(6) not null,
  `stkprd` INT NOT NULL,
  `typprd` CHAR(3) NOT NULL,
  `prcprd` DECIMAL(12,2) NOT NULL,
  `urlprd` VARCHAR(255) NULL,
  `urlthbprd` VARCHAR(255) NULL,
  `estprd` CHAR(3) NOT NULL,
  `categoria_id` INT NOT NULL,
  CONSTRAINT `categorias_id` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`catid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
   PRIMARY KEY (`codprd`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `carretilla` (
  `usercod` BIGINT(10) NOT NULL,
  `cod_producto` BIGINT(18) NOT NULL,
  `carr_cantidad` INT(5) NOT NULL,
  `carr_precio` DECIMAL(12,2) NOT NULL,
  `carr_fecha` DATETIME NOT NULL,
  INDEX `cod_producto_idx` (`cod_producto` ASC),
    CONSTRAINT `carretilla_user_key` FOREIGN KEY (`usercod`) REFERENCES `usuario` (`usercod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `carretilla_prd_key` FOREIGN KEY (`cod_producto`) REFERENCES `productos` (`codprd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `carretillaanon` (
  `anoncod` varchar(128) NOT NULL,
  `codprd` bigint(18) NOT NULL,
  `crrctd` int(5) NOT NULL,
  `crrprc` decimal(12,2) NOT NULL,
  `crrfching` datetime NOT NULL,
  PRIMARY KEY (`anoncod`,`codprd`),
  KEY `codprd_idx` (`codprd`),
  CONSTRAINT `carretillaanon_prd_key` FOREIGN KEY (`codprd`) REFERENCES `productos` (`codprd`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `factura` (
 `factura_Cod` bigint(18) NOT NULL AUTO_INCREMENT,
 `factura_Fecha` datetime DEFAULT NULL,
 `userCode` bigint(18) Not NULL,
 `factura_Est` char(3) DEFAULT NULL,
 `factura_Monto` decimal(13,2) DEFAULT NULL,
 `factura_Iva` decimal(13,2) DEFAULT NULL,
 `factura_Ship` decimal(13,2) DEFAULT NULL,
 `factura_Total` decimal(13,2) DEFAULT NULL,
 `factura_PayRef` varchar(255) DEFAULT NULL,
 `factura_ShpAddr` varchar(255) DEFAULT NULL,
PRIMARY KEY (`factura_cod`),
CONSTRAINT `factura_user` FOREIGN KEY (`userCode`) REFERENCES `usuario` (`usercod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB;

CREATE TABLE `factura_detalle` (
 `factura_cod` bigint(18) NOT NULL,
 `cod_producto` bigint(18) NOT NULL,
 `factura_desc` varchar(70) DEFAULT NULL,
 `factura_Ctd` int(5) DEFAULT NULL,
 `factura_precio` decimal(12,2) DEFAULT NULL,
 CONSTRAINT `factura-detalle` FOREIGN KEY (`factura_cod`) REFERENCES `factura` (`factura_Cod`), 
 CONSTRAINT `detalle_producto` FOREIGN KEY (`cod_producto`) REFERENCES `productos` (`codprd`),
 PRIMARY KEY (`factura_cod`,`cod_producto`)
) ENGINE=InnoDB;
