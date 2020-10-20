ALTER TABLE Canal_Distribucion ADD CONSTRAINT sociedad_FK     FOREIGN KEY (FK_Sociedad)    REFERENCES Sociedad (ID_Sociedad); 
ALTER TABLE Grupo_Venta 	   ADD CONSTRAINT canaldist_FK    FOREIGN KEY (FK_CanalDist)   REFERENCES Canal_Distribucion(ID_Canal);
ALTER TABLE Cliente 	       ADD CONSTRAINT gpoventa_FK  	  FOREIGN KEY (FK_GrupoVenta)  REFERENCES Grupo_Venta(ID_GrupoVenta);
ALTER TABLE Centro_Productivo  ADD CONSTRAINT canaldist01_FK  FOREIGN KEY (FK_CanalDist)   REFERENCES Canal_Distribucion(ID_Canal);
ALTER TABLE Familia_Material   ADD CONSTRAINT socfamilia_FK   FOREIGN KEY (FK_Sociedad)    REFERENCES Sociedad (ID_Sociedad);
ALTER TABLE Material		   ADD CONSTRAINT matfamilia_FK   FOREIGN KEY (FK_FamMaterial) REFERENCES Familia_Material (ID_Familia);
ALTER TABLE Venta   		   ADD CONSTRAINT matventa_FK     FOREIGN KEY (FK_Material)    REFERENCES Material (ID_Material);
ALTER TABLE Venta   		   ADD CONSTRAINT socventa_FK     FOREIGN KEY (FK_Sociedad)    REFERENCES Sociedad (ID_Sociedad);
ALTER TABLE Venta 			   ADD COLUMN FK_Cliente INT;
ALTER TABLE Venta   		   ADD CONSTRAINT cliventa_FK     FOREIGN KEY (FK_Cliente)    REFERENCES Cliente (ID_Cliente);

ALTER TABLE Canal_Distribucion DROP CONSTRAINT sociedad_FK;
ALTER TABLE Canal_Distribucion DROP COLUMN FK_Sociedad;
