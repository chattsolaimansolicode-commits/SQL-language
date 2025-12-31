-- Script pour gérer les données du blog

START TRANSACTION;

-- Ajout d’un article
INSERT INTO ARTICLE (titre,contenu,date_pub,id_utilisateur)
VALUES ('nouve post','aaaa','2020-34-15'1)

-- Mise à jour d’un utilisateur

UPDATE Utilisateur
SET nom = 'solaiman'
WHERE id = 3;

-- Suppression d’un commentaire

DELETE FROM Commentaire 
WHERE id = 3;

commit;

--Vérifier

SELECT * FROM ARTICLE

