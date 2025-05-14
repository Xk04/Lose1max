# **Structure du projet**

**Menu principal : [revenir à l'accueil](../../README.md)**

## _**Architecture MVC (Model-View-Controller)**_

L'architecture MVC est un modèle de conception qui sépare une application en trois composants principaux : le modèle, la vue et le contrôleur. Cette séparation permet de mieux organiser le code, de faciliter la maintenance et de rendre l'application plus évolutive.


---
### 🚀 *Structure de Lose1Max*

- `app/controllers/` 
    - Contient les controllers qui gèrent  la logique de l'application. Il reçoit les requêtes de l'utilisateur, interagit avec le modèle pour récupérer ou modifier des données, et choisit la vue à afficher en fonction des résultats. Il génère la page en assemblant les **views** comme des legos. \
     <!-- (`homeController.php`, `ligue1Controller.php`, `ajaxController.php`, _etc..._) -->

    >- Exemple : \
    Le controller `ligue1Controller.php` permet d'assembler les views `head.phtml`, `main_header.phtml`,`ligue1.phtml` et `footer.phtml` pour afficher la page de la ligue 1.

 &nbsp;
- `app/views/`
    - Contient les fichiers de **view** qui sont assemblés par les controllers. Elle est responsable de la présentation et de l'interface utilisateur. \
    Exemple : `head.phtml`, `ligue1.phtml`, `addmatch.phtml`, _etc..._ 
    
    >- Exemple : \
    La view `footer.phtml` affiche le pied de page de toutes les pages du site. \
    Elle est assemblée par les controllers pour être affichée sur chaque page. \