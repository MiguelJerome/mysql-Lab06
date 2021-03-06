-- 1.
INSERT INTO client(nom, prenom, date_naissance)
VALUES('Tremblay', 'Simon', '2001-05-18');
INSERT INTO client(nom, prenom, date_naissance)
VALUES('Dugal', 'Steven', '1993-08-01');
INSERT INTO client(nom, prenom, date_naissance)
VALUES('Boucher', 'Bertrand', '1985-12-24');
INSERT INTO client(nom, prenom, date_naissance)
VALUES('Gagnon', 'Mélanie', '1996-08-24');
INSERT INTO client(nom, prenom, date_naissance)
VALUES('Laporte', 'Éric', '1991-02-09');
INSERT INTO client(nom, prenom, date_naissance)
VALUES('Laporte', 'Éric', '1995-03-25');
INSERT INTO client(nom, prenom)
VALUES('Giroux', 'Claude');
INSERT INTO client(nom, prenom)
VALUES('Wayne', 'Bruce');

-- 2.
INSERT INTO produit(nom, description, prix)
VALUES('ordinateur', 'Un ordinateur', 500.99);
INSERT INTO produit(nom, description, prix)
VALUES('clavier', 'Un clavier', 56.99);
INSERT INTO produit(nom, description, prix)
VALUES('souris', 'Une souris', 24.99);
INSERT INTO produit(nom, description, prix)
VALUES('écran', 'Un écran', 210.99);

-- 3.
DELETE FROM client
WHERE nom = 'Tremblay' AND prenom = 'Simon';

-- 4.
UPDATE client
SET prenom = 'Robert', nom = 'Roger'
WHERE id_client = 3;

-- 5. 
DELETE FROM client
WHERE nom = 'Laporte' AND date_naissance < '1993-01-01';

-- 6.
UPDATE produit
SET prix = (prix / 2);
