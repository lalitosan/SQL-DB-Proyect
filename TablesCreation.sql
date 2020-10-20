CREATE TABLE Sociedad           (ID_Sociedad   INT PRIMARY KEY, Sociedad_Nombre   VARCHAR(45));
CREATE TABLE Canal_Distribucion (ID_Canal      INT PRIMARY KEY, Canal_Nombre      VARCHAR(45), FK_Sociedad    INT);
CREATE TABLE Grupo_Venta        (ID_GrupoVenta INT PRIMARY KEY, GrupoVenta_Nombre VARCHAR(45), FK_CanalDist   INT);
CREATE TABLE Cliente            (ID_Cliente    INT PRIMARY KEY, Cliente_Nombre    VARCHAR(45), FK_GrupoVenta  INT);
CREATE TABLE Familia_Material   (ID_Familia    INT PRIMARY KEY, Familia_Nombre    VARCHAR(45), FK_Sociedad    INT);
CREATE TABLE Material 			    (ID_Material   INT PRIMARY KEY, Material_Nombre   VARCHAR(45), FK_FamMaterial INT);
CREATE TABLE Centro_Productivo  (ID_CentroProd VARCHAR(6) PRIMARY KEY, CentroProd_Nombre VARCHAR(45), FK_CanalDist INT);
CREATE TABLE Venta				      (ID_Pedido	   INT PRIMARY KEY AUTO_INCREMENT, Importe INT, Cantidad_UME INT, Cantidad_UMB INT, Fecha DATE, FK_Sociedad INT, FK_Material INT);  
