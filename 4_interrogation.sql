USE BB;

-- =========================================
-- SELECTIONS / PROJECTIONS (5 requêtes)
-- =========================================

-- 1. afficher tous les livres actifs
SELECT L_titre
FROM Livre
WHERE L_status = 'actif';

-- 2. afficher les utilisateurs triés par date d'inscription
SELECT U_pseudo, U_date_inscription
FROM Utilisateur
ORDER BY U_date_inscription DESC;

-- 3. afficher les livres publiés entre 1950 et 2010
SELECT L_titre, L_publication
FROM Livre
WHERE L_publication BETWEEN '1950-01-01' AND '2010-01-01';

-- 4. afficher les livres en langue française
SELECT L_titre
FROM Livre
WHERE L_langue = 'Français';

-- 5. afficher les utilisateurs avec email unique
SELECT DISTINCT U_email
FROM Utilisateur;


-- =========================================
-- FONCTIONS D'AGREGATION (5 requêtes)
-- =========================================

-- 6. nombre total de livres
SELECT COUNT(*) AS nombre_livres
FROM Livre;

-- 7. nombre d'utilisateurs
SELECT COUNT(*) AS nombre_utilisateurs
FROM Utilisateur;

-- 8. moyenne des notes
SELECT AVG(N_valeur) AS moyenne_notes
FROM Note;

-- 9. nombre de livres par langue
SELECT L_langue, COUNT(*) AS nb_livres
FROM Livre
GROUP BY L_langue;

-- 10. nombre de notes par livre
SELECT L_ID, COUNT(*) AS nb_notes
FROM Note
GROUP BY L_ID
HAVING COUNT(*) >= 1;


-- =========================================
-- JOINTURES (5 requêtes)
-- =========================================

-- 11. afficher les livres avec leur utilisateur
SELECT L.L_titre, U.U_pseudo
FROM Livre L
JOIN Utilisateur U ON L.U_ID = U.U_ID;

-- 12. afficher les livres avec leur bibliothèque
SELECT L.L_titre, B.B_nom
FROM Livre L
JOIN Bibliotheque B ON L.B_id = B.B_id;

-- 13. afficher les commentaires avec leur utilisateur
SELECT C.Com_commentaire, U.U_pseudo
FROM Commentaire C
JOIN Utilisateur U ON C.U_ID = U.U_ID;

-- 14. afficher les notes avec le titre du livre
SELECT N.N_valeur, L.L_titre
FROM Note N
JOIN Livre L ON N.L_ID = L.L_ID;

-- 15. afficher les livres avec leur catégorie
SELECT L.L_titre, C.C_nom
FROM classer CL
JOIN Livre L ON CL.L_ID = L.L_ID
JOIN Categorie C ON CL.C_ID = C.C_ID;


-- =========================================
-- REQUETES IMBRIQUEES (5 requêtes)
-- =========================================

-- 16. livres ayant une note de 5
SELECT L_titre
FROM Livre
WHERE L_ID IN (
    SELECT L_ID
    FROM Note
    WHERE N_valeur = 5
);

-- 17. utilisateurs ayant laissé un commentaire
SELECT U_pseudo
FROM Utilisateur
WHERE U_ID IN (
    SELECT U_ID
    FROM Commentaire
);

-- 18. livres ayant au moins une note
SELECT L_titre
FROM Livre
WHERE EXISTS (
    SELECT *
    FROM Note
    WHERE Note.L_ID = Livre.L_ID
);

-- 19. utilisateurs qui suivent quelqu'un
SELECT U_ID
FROM follow
WHERE U_ID IN (
    SELECT U_ID_1
    FROM follow
);

-- 20. livres appartenant à la catégorie Roman
SELECT L_titre
FROM Livre
WHERE L_ID IN (
    SELECT L_ID
    FROM classer
    WHERE C_ID = 1
);
