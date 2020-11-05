ALTER TABLE Material		   ADD CONSTRAINT matfamilia_FK   FOREIGN KEY (ID_FamMaterial) REFERENCES Familia_Material (ID_Familia);

ALTER TABLE Venta   		   ADD CONSTRAINT socventa_FK     FOREIGN KEY (ID_Sociedad)    REFERENCES Sociedad (ID_Sociedad);
ALTER TABLE Venta   		   ADD CONSTRAINT matventa_FK     FOREIGN KEY (ID_Material)    REFERENCES Material (ID_Material);
ALTER TABLE Venta   		   ADD CONSTRAINT cliventa_FK     FOREIGN KEY (ID_Cliente)     REFERENCES Cliente (ID_Cliente);
ALTER TABLE Venta			   ADD CONSTRAINT canaldist_FK    FOREIGN KEY (ID_Canal)       REFERENCES Canal_Distribucion (ID_Canal);
ALTER TABLE Venta			   ADD CONSTRAINT centroprod_FK   FOREIGN KEY (ID_CentroProd)  REFERENCES Centro_Productivo (ID_CentroProd);
ALTER TABLE Venta   	       ADD CONSTRAINT gpoventa_FK  	  FOREIGN KEY (ID_GrupoVenta)  REFERENCES Grupo_Venta (ID_GrupoVenta);
