-- Modifier une ligne
UPDATE utilisateur 
SET nom = 'Alice Dupont', email = "alice.dupont@gmail.com"
WHERE id = 1;

 --Modifier plusieurs lignes
 UPDATE ARTICLE
 SET titre = 'lala'
 WHERE id = 3;

--Supprimer un enregistrement

DELETE FROM Commentaire
WHERE id = 2;

--Supprimer plusieurs lignes
DELETE FROM ARTICLE
WHERE date_pub < '2024-01-01';

--Vérifier les résultats

SELECT * FROM utilisateur;
SELECT * FROM ARTICLE;


