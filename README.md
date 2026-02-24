Prompt : 

Tu travailles dans le domaine du livre. 
Ta bibliothèque a comme activité d’offrir un service. 
C’est une bibliotheque comme la bibliotheque de Paris. La vie du prophete ,l’histoire du maroc avant l’indépendance, le saint coran ,Le mariage du petit Riad, Kara est la belle, Eloi est le kungfu. 
Inspire-toi d’un site web dans lequelle nous pouvons lire de livres gratuitement suivant : WEBCOMICS ,WEBTOON ,WATTPAD Ta bibliotheque veut appliquer MERISE pour concevoir un système d'information. 
Tu es chargé de la partie analyse, c’est-à-dire de collecter les besoins auprès de l’entreprise. 
Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu’il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données.
D’abord, établis les règles de gestions des données de ta bibliotheque sous la forme d'une liste à puce.
Elle doit correspondre aux informations que fournit quelqu’un qui connaît le fonctionnement de l’entreprise, mais pas comment se construit un système d’information.
Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres.
Il doit y avoir entre 25 et 35 données. 
Il sert à fournir des informations supplémentaires sur chaque donnée (taille et type) mais sans a priori sur comment les données vont être modélisées ensuite.
Fournis donc les règles de gestion et le dictionnaire de données.


1. Règles de gestion de la bibliothèque numérique

La bibliothèque est un service de lecture en ligne inspiré de plateformes telles que WEBTOON, WEBCOMICS et WATTPAD.
Elle permet aux utilisateurs inscrits de consulter des livres organisés par catégories :

* Gestion des utilisateurs:

-Un utilisateur doit créer un compte pour accéder au service.
-Chaque utilisateur possède un identifiant unique.
-L’adresse email d’un utilisateur est unique.
-Un utilisateur possède un nom, un prénom, un email, un mot de passe et une date d’inscription.
-Un utilisateur peut consulter plusieurs livres.
-Un utilisateur peut ajouter un livre à ses favoris.
-Un utilisateur peut noter un livre.
-Une note attribuée est comprise entre 1 et 5.
-Un utilisateur peut commenter un livre.
-Un utilisateur peut suivre d’autres utilisateurs (relation sociale).

* Gestion des livres:
  
-Chaque livre possède un identifiant unique.
-Un livre possède un titre, une description, une langue et une date de publication.
-Un livre appartient à au moins une catégorie.
-Un livre peut appartenir à plusieurs catégories.
-Un livre peut être actif ou retiré du catalogue.
-Un livre peut recevoir plusieurs notes et commentaires.

* Gestion des catégories:

-Chaque catégorie possède un identifiant unique.
-Une catégorie peut contenir plusieurs livres.

* Gestion des commentaires:

-Un commentaire est associé à un utilisateur et à un livre.
-Un commentaire possède un contenu et une date.
-Un utilisateur peut publier plusieurs commentaires.

* Gestion des notes:

-Une note est associée à un utilisateur et à un livre.
-Un utilisateur ne peut attribuer qu’une seule note par livre.

2. Dictionnaire de données brutes
Le tableau ci-dessous présente les données nécessaires au fonctionnement du système, sans présumer de leur organisation future dans les tables:

| Signification                | Type       | Taille |
| ---------------------------- | ---------- | ------ |
| Identifiant utilisateur      | Entier     | 10     |
| Nom utilisateur              | Texte      | 50     |
| Prénom utilisateur           | Texte      | 50     |
| Email utilisateur            | Texte      | 100    |
| Mot de passe utilisateur     | Texte      | 255    |
| Date inscription utilisateur | Date       | -      |
| Pseudonyme utilisateur       | Texte      | 50     |
| Identifiant livre            | Entier     | 10     |
| Titre livre                  | Texte      | 150    |
| Description livre            | Texte long | 1000   |
| Date publication livre       | Date       | -      |
| Langue livre                 | Texte      | 30     |
| Statut livre                 | Texte      | 20     |
| Identifiant catégorie        | Entier     | 10     |
| Nom catégorie                | Texte      | 50     |
| Identifiant commentaire      | Entier     | 10     |
| Contenu commentaire          | Texte long | 500    |
| Date commentaire             | Date       | -      |
| Identifiant note             | Entier     | 10     |
| Valeur note                  | Entier     | 1      |
| Date note                    | Date       | -      |
| Identifiant favori           | Entier     | 10     |
| Date ajout favori            | Date       | -      |
| Identifiant suivi            | Entier     | 10     |
| Date suivi                   | Date       | -      |

