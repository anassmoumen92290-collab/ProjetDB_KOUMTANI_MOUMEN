USE bibliotheque;

-- ===============================
-- UTILISATEUR
-- ===============================

-- pseudo unique
ALTER TABLE Utilisateur
ADD CONSTRAINT unique_pseudo
UNIQUE (U_pseudo);

-- email format simple
ALTER TABLE Utilisateur
ADD CONSTRAINT email_format_check
CHECK (U_email LIKE '%@%.%');

-- mot de passe minimum 6 caractères
ALTER TABLE Utilisateur
ADD CONSTRAINT mdp_longueur_check
CHECK (CHAR_LENGTH(U_MDP) >= 6);

-- ===============================
-- COMMENTAIRE
-- ===============================

-- commentaire non vide
ALTER TABLE Commentaire
ADD CONSTRAINT commentaire_non_vide
CHECK (CHAR_LENGTH(Com_commentaire) > 0);

-- ===============================
-- NOTE
-- ===============================

-- valeur de note entre 1 et 5
ALTER TABLE Note
ADD CONSTRAINT note_valeur_check
CHECK (N_valeur BETWEEN 1 AND 5);

-- ===============================
-- LIVRE
-- ===============================

-- statut livre
ALTER TABLE Livre
ADD CONSTRAINT statut_livre_check
CHECK (L_status IN ('actif','retire'));

-- langue non vide
ALTER TABLE Livre
ADD CONSTRAINT langue_non_vide
CHECK (CHAR_LENGTH(L_langue) > 0);

-- ===============================
-- BIBLIOTHEQUE
-- ===============================

-- email bibliothèque format simple
ALTER TABLE Bibliotheque_
ADD CONSTRAINT email_biblio_format
CHECK (B_email LIKE '%@%.%');

-- ===============================
-- FOLLOW
-- ===============================

-- empêcher un utilisateur de se suivre lui-même
ALTER TABLE follow
ADD CONSTRAINT follow_self_check
CHECK (U_ID <> U_ID_1);
