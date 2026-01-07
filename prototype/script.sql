  CREATE DATABASE projet;
USE projet;

CREATE TABLE EMPLOYE (
    id_EMPLOYE INT PRIMARY KEY AUTO_INCREMENT,
    Nom VARCHAR(50) NOT NULL,
    Prenom VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Role VARCHAR(100) NOT NULL
);

CREATE TABLE PROJET (
    id_projet INT PRIMARY KEY ,
    nom_projet VARCHAR(150) NOT NULL,
    description TEXT,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    statut ENUM('publié','brouillon','archivé')  DEFAULT 'brouillon',
    id_EMPLOYE INT NOT NULL,
    FOREIGN KEY (id_EMPLOYE) REFERENCES EMPLOYE (id_EMPLOYE)
);

CREATE TABLE TACHE (
    id_tache INT AUTO_INCREMENT PRIMARY KEY,
    description TEXT,
    date_limite DATE NOT NULL,
    statut ENUM('publié','brouillon','archivé') NOT NULL DEFAULT 'brouillon',
    priorite ENUM('haute','moyenne','basse'),
    id_projet INT NOT NULL,
    id_EMPLOYE INT NOT NULL,
    FOREIGN KEY (id_projet) REFERENCES PROJET (id_projet),
    FOREIGN KEY (id_EMPLOYE) REFERENCES EMPLOYE (id_EMPLOYE)
);


INSERT INTO EMPLOYE (nom,Prenom,Email,Role) VALUES
('ELhaj abdslam','tozani','lhajtozani@gmail.com','developpeur'),
('si mstafa','ambrozini','lmstaaf@gmail.com','developpeur'),
('lmrhom','samir','samirsamir@gmail.com','Testeur'),
('ALAMI','AHMED','l3alamidw@gmail.com','chef de projet');

INSERT INTO PROJET (id_projet, nom_projet, date_debut, date_fin, id_EMPLOYE)
VALUES
(123,'APP mobile','2025-01-09','2025-12-28',3),
(234,'Site E-commerce Beauty','2025-02-12','2026-01-28',3),
(98,'plateforme','2025-01-09','2025-12-28',3),
(177,'app windows','2026-02-18','2026-12-18',2);

INSERT INTO TACHE
(description, date_limite, statut, priorite, id_projet, id_EMPLOYE)
VALUES
('Design interface utilisateur', '2025-03-20', 'publie', 'haute', 234, 1),
('Développement backend', '2025-04-10', 'brouillon', 'moyenne', 234, 2),
('Tests fonctionnels', '2025-05-01', 'publie', 'basse', 98, 4),
('Rédaction documentation', '2025-06-15', 'brouillon', 'basse', 123, 1);


--1_Afficher tous les projets (titre,dateDeb,dateFin);

SELECT nom_projet,date_debut,date_fin
FROM PROJET;


--2_Afficher les employés dont le nom commence par 'EL';

SELECT *
FROM EMPLOYE WHERE Nom LIKE 'EL%';

--3_Afficher les taches du projet Num 234 ordonnées par priorité par ordre croissant;

SELECT * FROM TACHE 
WHERE id_projet = 234
ORDER BY  priorite ASC ;

--4_Afficher les projets qui se terminent avant Avril 2026

SELECT * FROM PROJET
WHERE date_fin < '2026-04-01';


--5_Afficher tous les employés développeurs

SELECT * FROM EMPLOYE
WHERE Role = 'developpeur';

--6_Afficher les tâches terminées du projet de code 98

SELECT * FROM TACHE
WHERE id_tache = 98 AND statut = 'publie';


-- --7_Afficher les projets avec leurs responsables
-- (titre, dateDéb, dateFin, nomChef, prénomChef)

SELECT p.nom_projet, p.date_debut, p.date_fin,
e.Nom AS nomChef, e.Prenom AS prenomchef
FROM PROJET p
JOIN EMPLOYE e ON P.id_EMPLOYE = e.id_EMPLOYE;

--8_Afficher les tâches du projet "Site E-commerce Beauty"

SELECT t.*
FROM TACHE t
JOIN PROJET p ON t.id_projet = p.id_projet
WHERE p.nom_projet = 'Site E-commerce Beauty';

--9_ombre de tâches terminées du projet "Site E-commerce Beauty"

SELECT count(*) AS nb_taches_terminees
FROM TACHE t
JOIN PROJET p ON t.id_projet = p.id_projet
WHERE p.nom_projet = 'Site E-commerce Beauty'
AND t.statut = 'publié';

--10_Combien de projets ont été terminés en 2025

SELECT COUNT(*) AS nb_projets_2025
FROM PROJET
WHERE YEAR(date_fin) = 2025;


-- update
--Modifier la date de fin du projet 234 par "16/05/2026";

UPDATE PROJET
SET date_fin = '16-05-2026'
WHERE id_projet = 234;

--Modifier l’état de la tâche 98 par "Terminée"

UPDATE TACHE
SET statut = 'publié'
WHERE id_tache = 98;

--4️⃣ DELETE

DELETE FROM TACHE
WHERE statut = 'brouillon'
AND id_projet = 123;

--Supprimer l’employé "ALAMI AHMED"

DELETE FROM EMPLOYE
WHERE Nom = 'ALAMI' AND Prenom = 'AHMED';






SELECT nom_projet,date_debut,date_fin
FROM PROJET;

SELECT id_EMPLOYE FROM EMPLOYE WHERE Nom LIKE 'EL%';

SELECT * FROM TACHE 
WHERE id_projet = 234 
ORDER BY priorité ASC;

SELECT * FROM PROJET
WHERE date_fin < 2026-04-01;

SELECT * FROM EMPLOYE
WHERE Role = 'developpeur'

SELECT * FROM TACHE
WHERE id_projet = 98 AND statut = 'publie'


SELECT p.nom_projet , p.date_fin ,p.date_debut,
FROM PROJET
e.Nom AS nomChef , e.Prenom AS prenomchef
JOIN EMPLOYE e ON p.id_EMPLOYE = e.id_EMPLOYE;

SELECT T.*
FROM TACHE t
JOIN PROJET p ON t.id_projet = p.id_projet
WHERE p.nom_projet = 'Site E-commerce Beauty';


SELECT COUNT(*) AS nb_taches_terminees
FROM TACHE t
JOIN PROJET p ON p.id_projet = t.id_tache
WHERE nom_projet = 'Site E-commerce Beauty'
AND statut = 'publee'

SELECT COUNT(*)
FROM PROJET P
WHERE YEAR(date_fin) = 2025;

UPDATE PROJET SET date_fin = "16/05/2026" WHERE 
id_projet = 234;

UPDATE TACHE SET statut ='publié' WHERE id_projet = 98;

DELETE FROM TACHE WHERE statut ='broullion' AND
id_projet = 123;

DELETE FROM EMPLOYE WHERE Nom = "ALAMI" AND "AHMED";





