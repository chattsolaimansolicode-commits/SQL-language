CREATE DATABASE blog_db;
USE blog_db;

-- Table utilisateur

CREATE TABLE utilisateur (
    id_utilisateur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(45) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    mot_de_passe VARCHAR(100) NOT NULL,
   
);

-- Table article
CREATE TABLE ARTICLE (
    id_ARTICLE INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(150) NOT NULL,
    contenu TEXT ,
    date_publication DATE NOT NULL,
    statut ENUM ('publie','brouillon')NOT NULL,
    id_utilisateur INT NOT NULL,
    id_categorie INT NOT NULL,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur),
    FOREIGN KEY (id_categorie) REFERENCES categorie(id_categorie)
);

INSERT INTO utilisateur (nom, email,mot_de_passe)
VALUES
('amal','amal@mail.com','amoola');
('Ali','ali@mail.com','ali123'),
('Sara','sara@mail.com','sar1212'),
('Omar','omar@mail.com','omaromar'),
('Lina','lina@mail.com','linaaa');

INSERT INTO ARTICLE (titre, contenu, date_pub, id_utilisateur) VALUES
('Premiere article','la pm','2024-01-20',1),
('2 article','la dm','2024-02-20',2),
('3 article','la tm','2024-04-04',3),
('4 article','la km','2024-01-17',4);

SELECT * FROM ARTICLE;

SELECT titre, contenu FROM ARTICLE;

SELECT titre, date_pub
FROM ARTICLE
WHERE date_pub >= '2024-01-01';

SELECT titre, date_pub
FROM Article
ORDER BY date_pub DESC;

SELECT titre
FROM Article
ORDER BY date_pub DESC
LIMIT 5;


SELECT * FROM TABLE;

SELECT nom,email
FROM ARTICLE;