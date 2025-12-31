--afficher les articles avec le nom de l'euteur
SELECT a.titre, u.nom
FROM ARTICLE a
INNER JOIN utilisateur u ON a.id_utilisateur = u.id;

--INNER JOIN basique
SELECT a.titre, a.date_pub, u.nom
FROM Article a
INNER JOIN Utilisateur u ON a.id_utilisateur = u.id;

--Ajouter un filtre
SELECT a.titre, u.nom
FROM Article a
INNER JOIN Utilisateur u ON a.id_utilisateur = u.id
WHERE u.nom = 'Alice';

-- LEFT JOIN pour voir les articles sans auteur
SELECT a.titre, u.nom
FROM Article a
LEFT JOIN Utilisateur u ON a.id_utilisateur = u.id;

--Jointure avec 3 tables
SELECT a.titre, u.nom, c.contenu
FROM Article a
INNER JOIN Utilisateur u ON a.id_utilisateur = u.id
INNER JOIN Commentaire c ON a.id = c.id_article;







                                                                                                                                                                                                                                               