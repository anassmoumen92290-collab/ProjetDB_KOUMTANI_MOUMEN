USE BB;

-- =========================
-- CATEGORIES
-- =========================

INSERT INTO Categorie VALUES
(1,'Roman'),
(2,'Science-fiction'),
(3,'Histoire'),
(4,'Informatique'),
(5,'Fantasy');


-- =========================
-- BIBLIOTHEQUES
-- =========================

INSERT INTO Bibliotheque VALUES
(1,'Paris',75001,123456789,'Bibliotheque Centrale','contact@biblio-paris.fr','10 rue de Rivoli'),
(2,'Lyon',69001,234567890,'Bibliotheque Lyon Centre','contact@biblio-lyon.fr','5 place Bellecour'),
(3,'Marseille',13001,345678901,'Bibliotheque Marseille','contact@biblio-mrs.fr','20 vieux port'),
(4,'Toulouse',31000,456789012,'Bibliotheque Toulouse','contact@biblio-tls.fr','12 rue Alsace'),
(5,'Lille',59000,567890123,'Bibliotheque Lille','contact@biblio-lille.fr','3 rue nationale');


-- =========================
-- UTILISATEURS
-- =========================

INSERT INTO Utilisateur VALUES
(1,'Alice','alice@mail.com','pass123','2023-01-01','alice_reader','Martin'),
(2,'Bob','bob@mail.com','pass456','2023-02-10','bob_books','Durand'),
(3,'Charlie','charlie@mail.com','pass789','2023-03-12','charlie_read','Bernard'),
(4,'David','david@mail.com','pass147','2023-04-05','david_lib','Robert'),
(5,'Emma','emma@mail.com','pass258','2023-05-11','emma_book','Petit'),
(6,'Lucas','lucas@mail.com','pass369','2023-06-02','lucas_read','Garcia'),
(7,'Sarah','sarah@mail.com','pass741','2023-06-15','sarah_book','Moreau'),
(8,'Hugo','hugo@mail.com','pass852','2023-07-10','hugo_reader','Simon'),
(9,'Lina','lina@mail.com','pass963','2023-07-20','lina_books','Laurent'),
(10,'Noah','noah@mail.com','pass159','2023-08-05','noah_read','Michel');


-- =========================
-- LIVRES
-- =========================

INSERT INTO Livre VALUES
(1,'Dune','Roman SF célèbre','1965-01-01','Français','actif','Frank Herbert',1,1),
(2,'1984','Roman dystopique','1949-01-01','Français','actif','George Orwell',2,2),
(3,'Le Seigneur des Anneaux','Fantasy épique','1954-01-01','Français','actif','JRR Tolkien',3,3),
(4,'Clean Code','Livre programmation','2008-01-01','Anglais','actif','Robert Martin',4,4),
(5,'Sapiens','Histoire de l humanité','2011-01-01','Français','actif','Yuval Harari',5,5),
(6,'Fondation','Saga science fiction','1951-01-01','Français','actif','Isaac Asimov',6,1),
(7,'Harry Potter','Roman fantastique','1997-01-01','Français','actif','JK Rowling',7,2),
(8,'Le Hobbit','Fantasy aventure','1937-01-01','Français','actif','JRR Tolkien',8,3);


-- =========================
-- COMMENTAIRES
-- =========================

INSERT INTO Commentaire VALUES
(1,'Excellent livre','2024-01-01',1),
(2,'Très intéressant','2024-01-02',2),
(3,'Un classique','2024-01-03',3),
(4,'Très instructif','2024-01-04',4),
(5,'Passionnant','2024-01-05',5),
(6,'Je recommande','2024-01-06',6),
(7,'Super lecture','2024-01-07',7),
(8,'Très bon','2024-01-08',8);


-- =========================
-- NOTES
-- =========================

INSERT INTO Note VALUES
(1,5,'2024-02-01',1,1,1),
(2,4,'2024-02-02',2,2,2),
(3,5,'2024-02-03',3,3,3),
(4,4,'2024-02-04',4,4,4),
(5,5,'2024-02-05',5,5,5);


-- =========================
-- FAVORIS
-- =========================

INSERT INTO favori VALUES
(1,'2024-03-01',1),
(2,'2024-03-02',2),
(3,'2024-03-03',3),
(4,'2024-03-04',4),
(5,'2024-03-05',5);


-- =========================
-- CLASSER
-- =========================

INSERT INTO classer VALUES
(1,2),
(2,1),
(3,5),
(4,4),
(5,3);


-- =========================
-- FOLLOW
-- =========================

INSERT INTO follow VALUES
(1,2,'2024-04-01'),
(2,3,'2024-04-02'),
(3,4,'2024-04-03'),
(4,5,'2024-04-04'),
(5,1,'2024-04-05');
