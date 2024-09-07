-- -----------------------------------------------------
-- Estructura de tienda_ropa
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tienda_ropa` DEFAULT CHARACTER SET utf8mb4 ;
USE `tienda_ropa` ;

-- -----------------------------------------------------
-- Tabla `rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_ropa`.`rol` (
  `Codigo` INT(11) NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Codigo`),
  UNIQUE INDEX `Nombre` (`Nombre` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Tabla `persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_ropa`.`persona` (
  `Identificacion` INT(11) NOT NULL AUTO_INCREMENT,
  `Nombres` VARCHAR(255) NULL DEFAULT NULL,
  `Apellidos` VARCHAR(255) NULL DEFAULT NULL,
  `Direccion` VARCHAR(255) NULL DEFAULT NULL,
  `Telefono` VARCHAR(50) NULL DEFAULT NULL,
  `Email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Identificacion`),
  UNIQUE INDEX `Email` (`Email` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Tabla `cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_ropa`.`cliente` (
  `ClienteID` INT(11) NOT NULL AUTO_INCREMENT,
  `PersonaID` INT(11) NOT NULL,
  `FechaRegistro` DATETIME NULL DEFAULT NULL,
  `RolID` INT(11) NOT NULL,
  PRIMARY KEY (`ClienteID`),
  INDEX `PersonaID` (`PersonaID` ASC),
  INDEX `RolID` (`RolID` ASC),
  CONSTRAINT `cliente_ibfk_1`
    FOREIGN KEY (`PersonaID`)
    REFERENCES `tienda_ropa`.`persona` (`Identificacion`),
  CONSTRAINT `cliente_ibfk_2`
    FOREIGN KEY (`RolID`)
    REFERENCES `tienda_ropa`.`rol` (`Codigo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Tabla `empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_ropa`.`empleado` (
  `EmpleadoID` INT(11) NOT NULL AUTO_INCREMENT,
  `PersonaID` INT(11) NOT NULL,
  `FechaContratacion` DATETIME NULL DEFAULT NULL,
  `RolID` INT(11) NOT NULL,
  PRIMARY KEY (`EmpleadoID`),
  INDEX `PersonaID` (`PersonaID` ASC),
  INDEX `RolID` (`RolID` ASC),
  CONSTRAINT `empleado_ibfk_1`
    FOREIGN KEY (`PersonaID`)
    REFERENCES `tienda_ropa`.`persona` (`Identificacion`),
  CONSTRAINT `empleado_ibfk_2`
    FOREIGN KEY (`RolID`)
    REFERENCES `tienda_ropa`.`rol` (`Codigo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Tabla `producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_ropa`.`producto` (
  `ProductoID` INT(11) NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(255) NULL DEFAULT NULL,
  `Precio` DECIMAL(10,2) NOT NULL,
  `Talla` VARCHAR(50) NULL DEFAULT NULL,
  `Color` VARCHAR(50) NULL DEFAULT NULL,
  `Stock` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ProductoID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Tabla `compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_ropa`.`compra` (
  `CompraID` INT(11) NOT NULL AUTO_INCREMENT,
  `ClienteID` INT(11) NOT NULL,
  `EmpleadoID` INT(11) NOT NULL,
  `Fecha` DATETIME NOT NULL,
  `Total` DECIMAL(10,2) NOT NULL,
  `OrdenCompra` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`CompraID`),
  INDEX `ClienteID` (`ClienteID` ASC),
  INDEX `EmpleadoID` (`EmpleadoID` ASC),
  CONSTRAINT `compra_ibfk_1`
    FOREIGN KEY (`ClienteID`)
    REFERENCES `tienda_ropa`.`cliente` (`ClienteID`),
  CONSTRAINT `compra_ibfk_2`
    FOREIGN KEY (`EmpleadoID`)
    REFERENCES `tienda_ropa`.`empleado` (`EmpleadoID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Tabla `compradetalle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_ropa`.`compradetalle` (
  `CompraID` INT(11) NOT NULL,
  `ProductoID` INT(11) NOT NULL,
  `Cantidad` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`CompraID`, `ProductoID`),
  INDEX `ProductoID` (`ProductoID` ASC),
  CONSTRAINT `compradetalle_ibfk_1`
    FOREIGN KEY (`CompraID`)
    REFERENCES `tienda_ropa`.`compra` (`CompraID`),
  CONSTRAINT `compradetalle_ibfk_2`
    FOREIGN KEY (`ProductoID`)
    REFERENCES `tienda_ropa`.`producto` (`ProductoID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Tabla `pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_ropa`.`pedido` (
  `PedidoID` INT(11) NOT NULL AUTO_INCREMENT,
  `CompraID` INT(11) NOT NULL,
  `Fecha` DATETIME NOT NULL,
  `IVA` DECIMAL(10,2) NULL DEFAULT NULL,
  `Total` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`PedidoID`),
  INDEX `CompraID` (`CompraID` ASC),
  CONSTRAINT `pedido_ibfk_1`
    FOREIGN KEY (`CompraID`)
    REFERENCES `tienda_ropa`.`compra` (`CompraID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Tabla `credencial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_ropa`.`credencial` (
  `CredencialID` INT(11) NOT NULL AUTO_INCREMENT,
  `PersonaID` INT(11) NULL DEFAULT NULL,
  `Correo` VARCHAR(255) NOT NULL,
  `Contrasena` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`CredencialID`),
  UNIQUE INDEX `Correo` (`Correo` ASC),
  INDEX `PersonaID` (`PersonaID` ASC),
  CONSTRAINT `credencial_ibfk_1`
    FOREIGN KEY (`PersonaID`)
    REFERENCES `tienda_ropa`.`persona` (`Identificacion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Tabla `proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_ropa`.`proveedor` (
  `ProveedorID` INT(11) NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(255) NULL DEFAULT NULL,
  `Direccion` VARCHAR(255) NULL DEFAULT NULL,
  `Telefono` VARCHAR(50) NULL DEFAULT NULL,
  `Email` VARCHAR(255) NOT NULL,
  `CalidadProducto` VARCHAR(255) NULL DEFAULT NULL,
  `CantidadSuministrada` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ProveedorID`),
  UNIQUE INDEX `Email` (`Email` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Tabla `productoproveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_ropa`.`productoproveedor` (
  `ProductoID` INT(11) NOT NULL,
  `ProveedorID` INT(11) NOT NULL,
  PRIMARY KEY (`ProductoID`, `ProveedorID`),
  INDEX `ProveedorID` (`ProveedorID` ASC),
  CONSTRAINT `productoproveedor_ibfk_1`
    FOREIGN KEY (`ProductoID`)
    REFERENCES `tienda_ropa`.`producto` (`ProductoID`),
  CONSTRAINT `productoproveedor_ibfk_2`
    FOREIGN KEY (`ProveedorID`)
    REFERENCES `tienda_ropa`.`proveedor` (`ProveedorID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;
