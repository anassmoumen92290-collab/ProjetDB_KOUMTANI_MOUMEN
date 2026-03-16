CREATE DATABASE bibliotheque;
USE bibliotheque;

CREATE TABLE Utilisateur(
   U_ID INT,
   U_prenom VARCHAR(50),
   U_email VARCHAR(50),
   U_MDP VARCHAR(50),
   U_date_inscription DATE,
   U_pseudo VARCHAR(50),
   U_nom VARCHAR(50),
   PRIMARY KEY(U_ID),
   UNIQUE(U_email)
);

CREATE TABLE Categorie(
   C_ID INT,
   C_nom VARCHAR(50),
   PRIMARY KEY(C_ID)
);

CREATE TABLE Commentaire(
   Com_ID INT,
   Com_commentaire VARCHAR(50),
   Com_date VARCHAR(50),
   U_ID INT NOT NULL,
   PRIMARY KEY(Com_ID),
   FOREIGN KEY(U_ID) REFERENCES Utilisateur(U_ID)
);

CREATE TABLE favori(
   F_ID INT,
   F_date DATE,
   U_ID INT NOT NULL,
   PRIMARY KEY(F_ID),
   FOREIGN KEY(U_ID) REFERENCES Utilisateur(U_ID)
);

CREATE TABLE Bibliotheque_(
   B_id INT,
   B_ville VARCHAR(50),
   B_codepostale BYTE,
   B_telephone SMALLINT,
   B_nom VARCHAR(50),
   B_email VARCHAR(50),
   B_adresse VARCHAR(50),
   PRIMARY KEY(B_id)
);

CREATE TABLE Livre(
   L_ID INT,
   L_titre VARCHAR(50),
   L_description VARCHAR(50),
   L_publication DATE,
   L_langue VARCHAR(50),
   L_status VARCHAR(50),
   L_auteur VARCHAR(50),
   U_ID INT NOT NULL,
   B_id INT NOT NULL,
   PRIMARY KEY(L_ID),
   FOREIGN KEY(U_ID) REFERENCES Utilisateur(U_ID),
   FOREIGN KEY(B_id) REFERENCES Bibliotheque_(B_id)
);

CREATE TABLE Note(
   N_ID INT,
   N_valeur INT,
   N_date DATE,
   L_ID INT NOT NULL,
   Com_ID INT NOT NULL,
   U_ID INT NOT NULL,
   PRIMARY KEY(N_ID),
   FOREIGN KEY(L_ID) REFERENCES Livre(L_ID),
   FOREIGN KEY(Com_ID) REFERENCES Commentaire(Com_ID),
   FOREIGN KEY(U_ID) REFERENCES Utilisateur(U_ID)
);

CREATE TABLE classer(
   L_ID INT,
   C_ID INT,
   PRIMARY KEY(L_ID, C_ID),
   FOREIGN KEY(L_ID) REFERENCES Livre(L_ID),
   FOREIGN KEY(C_ID) REFERENCES Categorie(C_ID)
);

CREATE TABLE follow(
   U_ID INT,
   U_ID_1 INT,
   follow_date DATE,
   PRIMARY KEY(U_ID, U_ID_1),
   FOREIGN KEY(U_ID) REFERENCES Utilisateur(U_ID),
   FOREIGN KEY(U_ID_1) REFERENCES Utilisateur(U_ID)
);
