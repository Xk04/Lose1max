<?php

error_reporting(E_ALL);
ini_set("display_errors", 1);


/* ========================== */
/* |     Base de données    | */
/* ========================== */

require_once "Database/Database.php";

$Db = new Database;
$Db->load();


/* ============================ */
/* |     Tableaux fichiers    | */
/* ============================ */

$css_files = [
    'fonts' => "public/css/fonts.css",
    'base' => "public/css/base.css",
    'position_homepage' => "public/css/position_homepage.css",
    'style_homepage' => "public/css/style_homepage.css",
    'header' => "public/css/header.css",
    '2nd_header' => "public/css/second_header.css",
    'admin_header' => "public/css/admin_header.css",
    'footer' => "public/css/footer.css",
    'sponsor' => "public/css/sponsor.css",
    'notfound' => "public/css/notfound.css",
    'login' => "public/css/login.css",
    'register' => "public/css/register.css",
    'ligue1' => "public/css/ligue1.css",
    'champions_league' => "public/css/champions_league.css",
    'sport_bettings' => "public/css/sportbettings.css",
    'article' => "public/css/article.css",
    'add_match' => "public/css/add_match.css"
];

$js_files = [
    'homepage' => "public/js/script_homepage.js",
    'sponsor' => "public/js/sponsor.js",
    'ligue1' => "public/js/script_ligue1.js",
    'champions_league' => "public/js/script_champions_league.js",
    'register' => "public/js/script_register.js",
    'sport_bettings' => "public/js/script_sportbettings.js"
];


/* ============================= */
/* |     Cookies - Session     | */
/* ============================= */

function isAuthenticated($db) {
    
    if (!isset($_COOKIE['session'])) return false;

    $result = $db->req_prepare("SELECT username, expiration_token 
                                FROM `utilisateurs` 
                                WHERE token_de_session = :token AND username = :username",
                                [
                                    ':token' => $_COOKIE['session'],
                                    ':username' => $_COOKIE['username']
                                ]
                               );
    
    if ($result) {
        $username = $result[0]['username'];
        $expiration = $result[0]['expiration_token'];
        if ($expiration < time()) {
            return false;
        } else {
            return count($result) > 0 ? $result[0]['username'] : false;
        }
    }
    else {
        return false;
    }
}

$authenticated = isAuthenticated($Db);

?>