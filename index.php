<?php
require_once "init.php";


/* ==================== */
/* |     Réponses     | */
/* ==================== */

function response($requete, $options=[]) {
    global $Db, $css_files, $js_files, $authenticated;
    $C_path = "app/controllers/";

    // Routage
    switch($requete) {

        // Controller de session
        case 'want_to_connect':
            require_once $C_path . "connexionController.php";
            $ctrl = new Connexion($Db);
            $username = $options[0];
            $password = $options[1];
            $ctrl->logInPortal($username, $password);
            exit;
            break;

        case 'want_to_register':
            require_once $C_path . "connexionController.php";
            $ctrl = new Connexion($Db);
            $username = $options[0];
            $email = $options[1];
            $password = $options[2];
            $ctrl->registerPortal($username, $email, $password);
            exit;
            break;

        case 'deconnexion':
            require_once $C_path . "connexionController.php";
            $ctrl = new Connexion($Db);
            $ctrl->setNullSessionCookie();
            $authenticated = false;
            break;

        // Controller AJAX
        case 'ajax':
            require_once $C_path . "AjaxController.php";
            $ctrl = new AjaxController($Db);
            if (isset($_GET['j'])) {
                $ctrl->handle($_GET['ajax'], [$_GET['j']]);
            } 
            else if (isset($_POST['match']) && isset($_POST['choice'])) {
                $ctrl->handle('votes', [$_POST['match'], $_POST['choice']]);
            }
            else if (isset($_GET['match'])) {
                $ctrl->handle($_GET['ajax'], [$_GET['match']]);
            }
            else {
                $ctrl->handle($_GET['ajax']);
            }
            exit;
            break;
        
        // Controllers de pages
        case 'home':
            require_once $C_path . "homeController.php";
            $ctrl = new HomeController($Db, $css_files, $js_files, $authenticated);
            $ctrl->load();
            exit;
            break;

        case 'login':
            require_once $C_path . "loginController.php";
            $ctrl = new LoginController($Db, $css_files, $js_files);
            $ctrl->load();
            exit;
            break;

        case 'register':
            require_once $C_path . "registerController.php";
            $ctrl = new RegisterController($Db, $css_files, $js_files);
            $ctrl->load();
            exit;
            break;

        case 'sportbettings':
            require_once $C_path . "sportbettingsController.php";
            $ctrl = new SportBettingsController($Db, $css_files, $js_files, $authenticated);
            $ctrl->load();
            exit;
            break;

        case 'ligue1':
            require_once $C_path . "ligue1Controller.php";
            $ctrl = new Ligue1Controller($Db, $css_files, $js_files, $authenticated);
            $ctrl->load();
            exit;
            break;

        case 'championsleague':
            require_once $C_path . "championsleagueController.php";
            $ctrl = new ChampionsLeagueController($Db, $css_files, $js_files, $authenticated);
            $ctrl->load();
            exit;
            break;

        case 'article':
            require_once $C_path . "articleController.php";
            $ctrl = new ArticleController($Db, $css_files, $js_files, $authenticated);
            if (isset($_GET['num'])) {
                $ctrl->load($_GET['num']);
            } else {
                response("");
            }
            exit;
            break;
        
        // add Match
        case 'addmatch':
            require_once $C_path . "addMatchController.php";
            $ctrl = new AddMatchController($Db, $css_files, $js_files, $authenticated);
            if ($ctrl->isRoot() == true) {
                $ctrl->load();
            } else {
                require "app/views/notfound.phtml";
            }
            break;

        case 'add_data_match':
            require_once $C_path . "addMatchController.php";
            $ctrl = new AddMatchController($Db, $css_files, $js_files, $authenticated);
            if ($ctrl->isRoot() == true) {
                $match = $options[0];
                $dom = $options[1];
                $ext = $options[2];
                $score_dom = $options[3];
                $score_ext = $options[4];
                $date = $options[5];
                $heure = $options[6];
                $journee = $options[7];
                $ctrl->add_data($match, $dom, $ext, $score_dom, $score_ext, $date, $heure, $journee);
            } else {
                require "app/views/notfound.phtml";
            }
            break;
        
        case 'error':
            require "app/views/error.phtml";
            exit;
            break;
        
        default:
            require "app/views/notfound.phtml";
            exit;
            break;
    }
}


/* ===================================== */
/* |       Gestion des requêtes        | */
/* ===================================== */

function listen() {
    $allowedAjax = ['classement_ligue1', 'classement_champions_league', 'match_l1', 'match_cl', 'spb_l1', 'spb_cl', 'pourcentages', 'votes'];
    $allowedPages = ['home', 'login', 'register', 'sportbettings', 'ligue1', 'championsleague', 'article', 'error', 'addmatch'];
    $allowedActions = ['deconnexion'];
    // Déconnexion
    if (isset($_GET['action'])) {
        $action = $_GET['action'] ?? 'action';
        if (in_array($action, $allowedActions)) {
            response('deconnexion');
        }
    }

    // Gestion des requêtes AJAX
    if (isset($_GET['ajax'])) {
        $ajax = $_GET['ajax'] ?? 'ajax';
        if (in_array($ajax, $allowedAjax)) {
            response('ajax');
        }
    }
    if (isset($_POST['ajax'])) {
        $ajax = $_POST['ajax'] ?? 'ajax';
        if (in_array($ajax, $allowedAjax)) {
            response('ajax');
        }
    }

    // Gestion de requêtes classiques
    else if (isset($_GET['page'])) {
        $page = htmlspecialchars($_GET['page'] ?? 'home');
        if (in_array($page, $allowedPages)) {
            response($page);
        }
        else {
            response("");
        }
    } 

    // Gestion des requêtes de types POST pour les connexions et inscriptions
    else if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $action_type = $_POST['action'] ?? '';

        if ($action_type === 'register' && isset($_POST['username']) && isset($_POST['email']) && isset($_POST['password']) && isset($_POST['terms'])) {
            response('want_to_register', [$_POST['username'], $_POST['email'], $_POST['password'], $_POST['terms']]);
        } else if ($action_type === 'register') {
            response('register');
        }

        else if ($action_type === 'login' && isset($_POST['username']) && isset($_POST['password'])) {
            response('want_to_connect', [$_POST['username'], $_POST['password']]);
        } else if ($action_type === 'login') {
            response('login');
        }

        else if ($action_type === 'addmatch') {
            if (isset($_POST['ligue']) && isset($_POST['EquipeDom']) && isset($_POST['EquipeExt']) &&
                isset($_POST['Score1']) && isset($_POST['Score2']) && isset($_POST['Date']) &&
                isset($_POST['Heure']) && isset($_POST['Journee'])) {
                    response('add_data_match', 
                            [
                                $_POST['ligue'], $_POST['EquipeDom'], $_POST['EquipeExt'],
                                $_POST['Score1'], $_POST['Score2'], $_POST['Date'], $_POST['Heure'],
                                $_POST['Journee']
                            ]
                        );
            }
            else {
                response('error');
            }
        }
    }

    // Aucune correspondance
    else {
        if ($_GET === Array()) {
            response('home');
        } else {
            response("");
        }
    }
}

listen();
?>
