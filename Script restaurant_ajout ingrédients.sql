Use ma_base;

INSERT INTO commande (nom, date_du_jour, total)
	VALUES ('ROBERT', CURDATE(), 152);
    
INSERT INTO commande (nom, date_du_jour, total)
	VALUES ('LEGRAND', CURDATE(), 156);
    
INSERT INTO commande (nom, date_du_jour, total)
	VALUES ('RODRIGUES', CURDATE(), 154);
    
INSERT INTO commande (nom, date_du_jour, total)
	VALUES ('DELPECHE', CURDATE(), 178);
    
    
INSERT INTO Plat (nom, tarif)
	VALUES ('Entrecote Bordelaise', 32);
    
INSERT INTO Plat (nom, tarif)
	VALUES ('Lieu Noir du Tibet', 56);
    
INSERT INTO Plat (nom, tarif)
	VALUES ('Courgettes Farcies aux Encornets', 35);
    
INSERT INTO Plat (nom, tarif)
	VALUES ('Poulet de Bresse', 32);
    
    
INSERT INTO Ingredient (nom)
	VALUES ('tomate');
    
INSERT INTO Ingredient (nom)
	VALUES ('fromage');
    
INSERT INTO Ingredient (nom)
	VALUES ('Poulet');
    
INSERT INTO Ingredient (nom)
	VALUES ('entrecote');
    
INSERT INTO Ingredient (nom)
	VALUES ('Lieu');
    
INSERT INTO Ingredient (nom)
	VALUES ('Courgette');
    
INSERT INTO Ingredient (nom)
	VALUES ('Encornets');
    
INSERT INTO Ingredient (nom)
	VALUES ('Creme');
    
INSERT INTO Ingredient (nom)
	VALUES ('Vin');
    
INSERT INTO commande_plats (ID_C_commande_plats, ID_P_commande_plats)
    VALUES (1,1),  -- la Famille Robert a commandé une entrecote Bordelaise.
           (1,4),  -- La famille Robert a également commandé un poulet de Bresse.
		   (2,2),  -- La famille Legrand a commandé un Lieu Noir.
           (2,2),  -- Et finalement en a commandé un second.
           (2,3),
           (3,3),
           (3,1),
           (3,2),
           (4,4),
           (4,2);
           
INSERT INTO plat_ingredient (ID_P_plat_ingredient, ID_I_plat_ingredient, quantite)
    VALUES (1,4,1),
		   (1,9,1),
           (2,2,2),
           (2,5,1),
           (2,8,1),
           (3,2,4),
           (3,6,3),
           (3,8,1),
           (4,3,1),
           (4,1,3),
           (4,8,1);