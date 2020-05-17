Projet J2e

Sujet choisi: restaurants
Cette application communique avec une base de données MariaDb. Le script pour créer la base est join avec ce projet.

Cette application comporte trois pages: une page d'accueil, index.jsp, qui contient la liste des restaurants,
et où l'on peut ajouter, modifier, supprimer des restaurants grâce aux formulaires. La recherche de restaurants se fait côté client, avec 
le plugin DataTables.js.

Pour accéder au détail d'un restaurant, il faut cliquer sur une ligne du tableau.

Page detailRestaurant:
Cette page contient les détails d'un restaurant, avec la liste de tous ses plats.
On peut aussi créer, modifier ou supprimer des plats du restaurant.

Page réponse:
A chaque fois qu'on fait une requete http post vers le serveur, le serveur renvoie une reponse qui est affichée 
dans la vue Reponse.jsp.

Partie Technique:

Toutes les requetes sql sont dans le package dao.
La vérification des doublons de restaurants se fait dans la fonction existeDeja, de la classe RestaurantDao.
Les servlets sont dans le package controleurs.
Du javascript est utilisé pour la table de la page index.jsp (dataTables).
