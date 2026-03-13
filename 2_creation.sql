USE bibliotheque;

-- ======================================
-- EMAIL UNIQUE
-- ======================================

ALTER TABLE Utilisateur
ADD CONSTRAINT unique_email
UNIQUE (U_email);

-- ======================================
-- NOTE ENTRE 1 ET 5
-- ======================================

ALTER TABLE Note
ADD CONSTRAINT note_valeur_check
CHECK (N_valeur BETWEEN 1 AND 5);

-- ======================================
-- DATE INSCRIPTION VALIDE
-- ======================================

ALTER TABLE Utilisateur
ADD CONSTRAINT date_inscription_check
CHECK (U_date_inscription <= CURRENT_DATE);

-- ======================================
-- STATUT LIVRE
-- ======================================

ALTER TABLE Livre
ADD CONSTRAINT statut_livre_check
CHECK (L_status IN ('actif', 'retire'));

-- ======================================
-- CODE POSTAL FORMAT
-- ======================================

ALTER TABLE Bibliotheque
ADD CONSTRAINT codepostal_check
CHECK (CHAR_LENGTH(B_codepostale) BETWEEN 4 AND 10);

-- ======================================
-- EMAIL BIBLIOTHEQUE FORMAT
-- ======================================

ALTER TABLE Bibliotheque
ADD CONSTRAINT email_format_check
CHECK (B_email LIKE '%@%.%');

-- ======================================
-- PSEUDO UNIQUE
-- ======================================

ALTER TABLE Utilisateur
ADD CONSTRAINT unique_pseudo
UNIQUE (U_pseudo);

-- ======================================
-- FOLLOW : PAS SE SUIVRE SOI MEME
-- ======================================

ALTER TABLE follow
ADD CONSTRAINT follow_self_check
CHECK (U_ID <> U_ID_1);

-- ======================================
-- DATE COMMENTAIRE
-- ======================================

ALTER TABLE Commentaire
ADD CONSTRAINT commentaire_date_check
CHECK (Com_date <= CURRENT_DATE);

-- ======================================
-- DATE NOTE
-- ======================================

ALTER TABLE Note
ADD CONSTRAINT note_date_check
CHECK (N_date <= CURRENT_DATE);