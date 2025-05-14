<?php
class LoginController {
    private $db, $css_files, $js_files;

    public function __construct($Db, $css_files, $js_files) {
        $this->db = $Db;
        $this->css_files = $css_files;
        $this->js_files = $js_files;
    }
    
    public function load() {
        $pageTitle = "Lose1Max | Connexion";

        /* === CSS === */
        $import = $this->css_files;

        $css_list = [
                $import["fonts"],
                $import["login"],
            ];


        /* === JS === */
        $import = $this->js_files;

        $js_list = [
            ];

        /* View */
        require "app/views/head.phtml";
        require "app/views/login.phtml";
    }
}

?>
