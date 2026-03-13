-- ======================================
-- Création de la base
-- ======================================

CREATE DATABASE IF NOT EXISTS bibliotheque;
USE bibliotheque;

-- ======================================
-- TABLE UTILISATEUR
-- ======================================

CREATE TABLE Utilisateur (
    U_ID INT PRIMARY KEY AUTO_INCREMENT,
    U_prenom VARCHAR(50),
    U_email VARCHAR(50),
    U_MDP VARCHAR(50),
    U_date_inscription DATE,
    U_pseudo VARCHAR(50),
    U_nom VARCHAR(50)
);

-- ======================================
-- TABLE CATEGORIE
-- ======================================

CREATE TABLE Categorie (
    C_ID INT PRIMARY KEY AUTO_INCREMENT,
    C_nom VARCHAR(50)
);

-- ======================================
-- TABLE BIBLIOTHEQUE
-- ======================================

CREATE TABLE Bibliotheque (
    B_id INT PRIMARY KEY AUTO_INCREMENT,
    B_ville VARCHAR(50),
    B_codepostale VARCHAR(10),
    B_telephone VARCHAR(20),
    B_nom VARCHAR(50),
    B_email VARCHAR(50),
    B_adresse VARCHAR(100)
);

-- ======================================
-- TABLE LIVRE
-- ======================================

CREATE TABLE Livre (
    L_ID INT PRIMARY KEY AUTO_INCREMENT,
    L_titre VARCHAR(50),
    L_description VARCHAR(200),
    L_publication DATE,
    L_langue VARCHAR(50),
    L_status VARCHAR(50),
    L_auteur VARCHAR(50),
    U_ID INT,
    B_id INT,

    FOREIGN KEY (U_ID)
        REFERENCES Utilisateur(U_ID)
        ON UPDATE CASCADE
        ON DELETE SET NULL,

    FOREIGN KEY (B_id)
        REFERENCES Bibliotheque(B_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);

-- ======================================
-- TABLE COMMENTAIRE
-- ======================================

CREATE TABLE Commentaire (
    Com_ID INT PRIMARY KEY AUTO_INCREMENT,
    Com_commentaire VARCHAR(200),
    Com_date DATE,
    U_ID INT,

    FOREIGN KEY (U_ID)
        REFERENCES Utilisateur(U_ID)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- ======================================
-- TABLE FAVORI
-- ======================================

CREATE TABLE favori (
    F_ID INT PRIMARY KEY AUTO_INCREMENT,
    F_date DATE,
    U_ID INT,

    FOREIGN KEY (U_ID)
        REFERENCES Utilisateur(U_ID)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- ======================================
-- TABLE NOTE
-- ======================================

CREATE TABLE Note (
    N_ID INT PRIMARY KEY AUTO_INCREMENT,
    N_valeur INT,
    N_date DATE,
    L_ID INT,
    Com_ID INT,
    U_ID INT,

    FOREIGN KEY (L_ID)
        REFERENCES Livre(L_ID)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (Com_ID)
        REFERENCES Commentaire(Com_ID)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (U_ID)
        REFERENCES Utilisateur(U_ID)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- ======================================
-- TABLE CLASSER (association N:N)
-- ======================================

CREATE TABLE classer (
    L_ID INT,
    C_ID INT,

    PRIMARY KEY (L_ID, C_ID),

    FOREIGN KEY (L_ID)
        REFERENCES Livre(L_ID)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (C_ID)
        REFERENCES Categorie(C_ID)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- ======================================
-- TABLE FOLLOW
-- ======================================

CREATE TABLE follow (
    U_ID INT,
    U_ID_1 INT,
    follow_date DATE,

    PRIMARY KEY (U_ID, U_ID_1),

    FOREIGN KEY (U_ID)
        REFERENCES Utilisateur(U_ID)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

    FOREIGN KEY (U_ID_1)
        REFERENCES Utilisateur(U_ID)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);