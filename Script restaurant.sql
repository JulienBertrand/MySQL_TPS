
DROP DATABASE ma_base;

CREATE DATABASE IF NOT EXISTS ma_base;
Use ma_base;

CREATE TABLE IF NOT EXISTS Commande
(
ID_C_commande int PRIMARY KEY NOT NULL auto_increment,
nom VARCHAR(50),
date_du_jour DATE,
total int
);

CREATE TABLE IF NOT EXISTS Plat
(
ID_P_Plat int PRIMARY KEY NOT NULL auto_increment,
nom VARCHAR(50),
Tarif int
);

CREATE TABLE IF NOT EXISTS Ingredient
(
ID_I_ingredient int PRIMARY KEY NOT NULL auto_increment,
nom VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS commande_plats
(
ID int PRIMARY KEY NOT NULL auto_increment,
ID_C_commande_plats int NOT NULL,
ID_P_commande_plats int NOT NULL,

CONSTRAINT FK_ID_C_Commande_plats FOREIGN KEY (ID_C_commande_plats) REFERENCES Commande (ID_C_commande) on delete restrict,
CONSTRAINT FK_ID_P_Commande_plats FOREIGN KEY (ID_P_commande_plats) REFERENCES Plat (ID_P_Plat) on delete restrict
);



CREATE TABLE IF NOT EXISTS plat_ingredient
(
ID_P_plat_ingredient int NOT NULL,
ID_I_plat_ingredient int NOT NULL,
quantite int NOT NULL,

CONSTRAINT FK_ID_P_plat_Ingredient FOREIGN KEY (ID_P_plat_ingredient) REFERENCES Plat (ID_P_Plat) on delete restrict,
CONSTRAINT FK_ID_I_plat_Ingredient FOREIGN KEY (ID_I_plat_ingredient) REFERENCES Ingredient (ID_I_ingredient) on delete restrict
);



-- ALTER TABLE commande_plats
-- ADD CONSTRAINT FK_ID_C_Commande_plats FOREIGN KEY (ID_C_commande) REFERENCES Commande (ID_C_commande) on delete restrict,
-- ADD CONSTRAINT FK_ID_P_Commande_plats FOREIGN KEY (ID_P_commande_plats) REFERENCES Plat (ID_P_commande_plats) on delete restrict;

-- ALTER TABLE plat_ingredient
-- ADD CONSTRAINT FK_ID_P_plat_Ingredient FOREIGN KEY (ID_P_Plat) REFERENCES Plat (ID_P_Plat) on delete restrict,
-- ADD CONSTRAINT FK_ID_I_plat_Ingredient FOREIGN KEY (ID_I_ingredient) REFERENCES Ingredient (ID_I_ingredient) on delete restrict;