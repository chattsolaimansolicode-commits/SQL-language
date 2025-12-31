-- Compter le nombre d’articles par utilisateur
-- et afficher uniquement les utilisateurs ayant plus de 2 articles

SELECT id_utilisateur, COUNT(*) AS nb_articles
FROM ARTICLE
GROUP BY id_utilisateur
HAVING COUNT(*) > 2;

-- Compter le nombre total d’articles dans la table ARTICLE

SELECT  COUNT(*) AS nb_articles FROM ARTICLE;

-- Récupérer la date de publication la plus récente
-- (dernier article publié)
SELECT MAX(date_pub) AS recent_date 
FROM ARTICLE;

-- Compter le nombre d’articles pour chaque utilisateur

SELECT id_utilisateur, COUNT(*) AS nb_articles
FROM ARTICLE
GROUP BY id_utilisateur;

-- Compter le nombre d’articles par utilisateur
-- et afficher uniquement ceux qui ont plus de 2 articles
SELECT id_utilisateur, COUNT(*) AS nb_articles
FROM ARTICLE
GROUP BY id_utilisateur
HAVING COUNT(*) > 2;

-- Calculer la moyenne du nombre de vues des articles

SELECT AVG(n_vues) AS MOYENNE_vues FROM ARTICLE;
