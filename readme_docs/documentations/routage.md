# Backend

**Menu principal : [revenir à l'accueil](../../README.md)**

## 📋 **Routage**

### 🚀 *Variables globales*

Dans init.php on charge 2 listes : css_list, js_list. Cela permet de récupérer le nom pluis rapidement et de faciliter l'écriture des controllers MVC

### 🚀 *Requêtes*

Les requêtes du client sont gérer dans index.php, la fonction listen décompose tous les cas possibles : req. AJAX, formulaire POST, Action. Si la requête est acceptée, elle listen appelle response, sinon la page notfound.phthml est envoyée.

Remarque : _il y a un nombre fini de pages autorisées_
```PHP
$allowedAjax = ['classement_ligue1', 'classement_champions_league', 'match_l1', 'match_cl', 'spb_l1', 'spb_cl', 'pourcentages', 'votes'];

$allowedPages = ['home', 'login', 'register', 'sportbettings', 'ligue1', 'championsleague', 'article', 'error', 'addmatch'];

$allowedActions = ['deconnexion'];
```

### 🚀 *Réponses*

Une fois la requête traitée, elle est redirigée vers un controller qui génère la page demandée : (format)

```PHP
function response($requete, $options=[]) {
    global $Db, $css_files, $js_files, $authenticated;
    $C_path = "app/controllers/";

    // Routage
    switch($requete) {

        // Controller de session
        case '[...]':
            require_once $C_path . "[...]Controller.php";
            $ctrl = new UnController($Db);
            $option1 = $options[0];
            $ctrl->load($option1);
            exit;
            break;
        
        // etc

        // Controller AJAX
            // idem

        // Controllers de pages
            // idem

        // add Match
            // idem

        case 'error':
            require "app/views/error.phtml";
            exit;
            break;
        
        default:
            require "app/views/notfound.phtml";
            exit;
            break;
```

Une fois la page générée, elle est envoyé au client