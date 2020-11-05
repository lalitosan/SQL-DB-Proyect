CREATE TABLE Sociedad           (ID_Sociedad   INT PRIMARY KEY, Sociedad_Nombre   VARCHAR(45));
CREATE TABLE Canal_Distribucion (ID_Canal      INT PRIMARY KEY, Canal_Nombre      VARCHAR(45));
CREATE TABLE Cliente            (ID_Cliente    INT PRIMARY KEY, Cliente_Nombre    VARCHAR(45));
CREATE TABLE Grupo_Venta        (ID_GrupoVenta INT PRIMARY KEY, GrupoVenta_Nombre VARCHAR(45));
CREATE TABLE Familia_Material   (ID_Familia    INT PRIMARY KEY, Familia_Nombre    VARCHAR(45));
CREATE TABLE Centro_Productivo  (ID_CentroProd VARCHAR(6) PRIMARY KEY, CentroProd_Nombre VARCHAR(45));
CREATE TABLE Material 			(ID_Material   INT PRIMARY KEY, Material_Nombre   VARCHAR(45), ID_FamMaterial INT); -- Tiene FK
CREATE TABLE Venta				(ID_Pedido     INT PRIMARY KEY AUTO_INCREMENT, ID_Sociedad INT, ID_Material INT, ID_Cliente INT, ID_Canal INT, ID_CentroProd VARCHAR(6), ID_GrupoVenta INT, Importe INT, Cantidad_UME INT, Cantidad_UMB INT, Fecha DATE); -- Tiene FK's
