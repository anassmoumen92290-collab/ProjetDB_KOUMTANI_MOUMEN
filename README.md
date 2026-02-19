Prompt utiilser: 

Tu travailles dans le domaine du livre. 
Ta bibliothèque a comme activité d’offrir un service. 
C’est une bibliotheque comme la bibliotheque de Paris. La vie du prophete ,l’histoire du maroc avant l’indépendance, le saint coran ,Le mariage du petit Riad, Kara est la belle, Eloi est le kungfu. 
Inspire-toi d’un site web dans equelle nous pouvons lire de livres gratuitement suivant : WEBCOMICS ,WEBTOON ,WATTPAD Ta bibliotheque veut appliquer MERISE pour concevoir un système d'information. 
Tu es chargé de la partie analyse, c’est-à-dire de collecter les besoins auprès de l’entreprise. 
Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu’il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données.
D’abord, établis les règles de gestions des données de ta bibliotheque sous la forme d'une liste à puce.
Elle doit correspondre aux informations que fournit quelqu’un qui connaît le fonctionnement de l’entreprise, mais pas comment se construit un système d’information.
Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres.
Il doit y avoir entre 25 et 35 données. 
Il sert à fournir des informations supplémentaires sur chaque donnée (taille et type) mais sans a priori sur comment les données vont être modélisées ensuite.
Fournis donc les règles de gestion et le dictionnaire de données.

Dictionnaire de données brutes

1. Règles de gestion de la bibliothèque numérique:


La bibliothèque est un service de lecture en ligne, inspiré de plateformes comme WEBTOON, WEBCOMICS et WATTPAD. Elle propose des livres consultables gratuitement ou sous abonnement premium.
Les règles de gestion sont les suivantes :
Gestion des utilisateurs
Un utilisateur doit créer un compte pour accéder aux livres.
Chaque utilisateur possède un identifiant unique.
L’adresse email d’un utilisateur est unique.
Un utilisateur possède un nom, un prénom, un email et un mot de passe.
Un utilisateur possède une date d’inscription.
Un utilisateur peut consulter plusieurs livres.
Un utilisateur peut ajouter un livre à ses favoris.
Un utilisateur peut noter un livre.
Une note attribuée à un livre est comprise entre 1 et 5.
Un utilisateur peut commenter un chapitre.
Un utilisateur peut souscrire à un abonnement premium.
Un utilisateur ne peut avoir qu’un seul abonnement actif à la fois.
Gestion des livres
Chaque livre possède un identifiant unique.
Un livre possède un titre, une description et une date de publication.
Un livre est écrit par un auteur.
Un livre appartient à au moins une catégorie.
Un livre peut appartenir à plusieurs catégories.
Un livre possède une langue.
Un livre peut être gratuit ou réservé aux abonnés premium.
Un livre peut être actif ou retiré du catalogue.
Le nombre total de vues d’un livre est enregistré.
La moyenne des notes attribuées à un livre est calculée.
Exemples de livres proposés :
La vie du prophète
L’histoire du Maroc avant l’indépendance
Le Saint Coran
Le mariage du petit Riad
Kara est la belle
Eloi est le kungfu
Gestion des auteurs
Chaque auteur possède un identifiant unique.
Un auteur possède un nom et une nationalité.
Un auteur peut écrire plusieurs livres.
Gestion des chapitres
Un livre est composé de plusieurs chapitres.
Chaque chapitre possède un identifiant unique.
Chaque chapitre appartient à un seul livre.
Un chapitre possède un numéro d’ordre.
Un chapitre possède un titre.
Un chapitre contient un contenu textuel.
Le nombre de lectures d’un chapitre est enregistré.
Gestion des commentaires
Un commentaire est associé à un utilisateur et à un chapitre.
Un commentaire possède un contenu et une date.
Un utilisateur peut publier plusieurs commentaires.
Gestion des abonnements
Un abonnement possède un identifiant unique.
Un abonnement possède une date de début et une date de fin.
Un abonnement possède un statut (actif ou expiré).
Un abonnement est associé à un seul utilisateur.

2. Dictionnaire de données brutes
Le tableau ci-dessous présente les données nécessaires au fonctionnement du système, sans présumer de leur organisation future dans les tables:

| Signification de la donnée     | Type       | Taille |
| ------------------------------ | ---------- | ------ |
| Identifiant utilisateur        | Entier     | 10     |
| Nom utilisateur                | Texte      | 50     |
| Prénom utilisateur             | Texte      | 50     |
| Email utilisateur              | Texte      | 100    |
| Mot de passe utilisateur       | Texte      | 255    |
| Date inscription utilisateur   | Date       | -      |
| Identifiant abonnement         | Entier     | 10     |
| Date début abonnement          | Date       | -      |
| Date fin abonnement            | Date       | -      |
| Statut abonnement              | Texte      | 20     |
| Identifiant livre              | Entier     | 10     |
| Titre livre                    | Texte      | 150    |
| Description livre              | Texte long | 1000   |
| Date publication livre         | Date       | -      |
| Langue livre                   | Texte      | 20     |
| Statut livre                   | Texte      | 20     |
| Type accès livre               | Texte      | 20     |
| Nombre vues livre              | Entier     | 10     |
| Moyenne note livre             | Décimal    | 3,2    |
| Identifiant auteur             | Entier     | 10     |
| Nom auteur                     | Texte      | 100    |
| Nationalité auteur             | Texte      | 50     |
| Identifiant catégorie          | Entier     | 10     |
| Nom catégorie                  | Texte      | 50     |
| Identifiant chapitre           | Entier     | 10     |
| Numéro chapitre                | Entier     | 5      |
| Titre chapitre                 | Texte      | 150    |
| Contenu chapitre               | Texte long | 5000   |
| Nombre lectures chapitre       | Entier     | 10     |
| Identifiant commentaire        | Entier     | 10     |
| Contenu commentaire            | Texte long | 500    |
| Date commentaire               | Date       | -      |
| Note attribuée par utilisateur | Entier     | 1      |
