
USE BB;

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

