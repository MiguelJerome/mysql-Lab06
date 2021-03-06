DROP DATABASE IF EXISTS boutique_jouet;
CREATE DATABASE boutique_jouet CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE boutique_jouet;

CREATE TABLE client(
	id_client INT NOT NULL AUTO_INCREMENT,
	nom VARCHAR(50) NOT NULL,
	prenom VARCHAR(50) NOT NULL,
	date_naissance DATE NULL,
	CONSTRAINT pk_client PRIMARY KEY(id_client)
);

CREATE TABLE produit(
	id_produit INT NOT NULL AUTO_INCREMENT,
	nom VARCHAR(50) NOT NULL,
	description TINYTEXT NOT NULL,
	prix DOUBLE NOT NULL,
	CONSTRAINT pk_produit PRIMARY KEY(id_produit)
);

CREATE TABLE commande(
	id_commande INT NOT NULL AUTO_INCREMENT,
	id_client INT NOT NULL,
	date_commande DATE NOT NULL,
	CONSTRAINT pk_commande PRIMARY KEY(id_commande),
	CONSTRAINT fk_commande FOREIGN KEY(id_client)
		REFERENCES client(id_client)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);

CREATE TABLE commande_produit(
	id_commande INT NOT NULL,
	id_produit INT NOT NULL,
	quantite INT NOT NULL,
	CONSTRAINT pk_commande_produit PRIMARY KEY(id_commande, id_produit),
	CONSTRAINT fk_commande2 FOREIGN KEY(id_commande)
		REFERENCES commande(id_commande)
		ON DELETE RESTRICT
		ON UPDATE CASCADE,
	CONSTRAINT fk_produit FOREIGN KEY(id_produit)
		REFERENCES produit(id_produit)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);

 -- 1 Client   
INSERT INTO client (nom, prenom, date_naissance)
VALUES ('Tremblay', 'Simon', '2001-05-18');

 -- 2 Client
INSERT INTO client (nom, prenom, date_naissance)
VALUES ('Dugal', 'Steven', '1993-08-01');

 -- 3 Client
INSERT INTO client (nom, prenom, date_naissance)
VALUES ('Boucher', 'Bertrand', '1985-12-24');

 -- 4 Client
INSERT INTO client (nom, prenom, date_naissance)
VALUES ('Gagnon', 'Melanie', '1996-08-24');

 -- 5 Client
INSERT INTO client (nom, prenom, date_naissance)
VALUES ('Laporte', 'Eric', '1991-02-09');

 -- 6 Client
INSERT INTO client (nom, prenom, date_naissance)
VALUES ('Laporte', 'Eric', '1995-03-25');

 -- 7 Client
INSERT INTO client (nom, prenom, date_naissance)
VALUES ('Giroux', 'Claude', '2001-05-18');

 -- 8 Client
INSERT INTO client (nom, prenom)
VALUES ('Wayne', 'Bruce');

 -- 1 produit
INSERT INTO produit (nom, description, prix)
VALUES ('ordinateur', 'Un ordinateur', '500.99');

 -- 2 produit
INSERT INTO produit (nom, description, prix)
VALUES ('clavier', 'Un clavier', '56.99');

 -- 3 produit
INSERT INTO produit (nom, description, prix)
VALUES ('souris', 'Une souris', '24.99');

 -- 4 produit
INSERT INTO produit (nom, description, prix)
VALUES ('écran', 'Un écran', '210.99');

DELETE FROM client 
WHERE nom = 'Tremblay' AND prenom = 'Simon';

UPDATE client 
SET nom = 'Roger', prenom = 'Robert'
WHERE id_client = 3;

DELETE FROM client 
WHERE nom = 'Laporte' AND date_naissance < '1993-01-01';

UPDATE produit
SET prix = (prix/2);
