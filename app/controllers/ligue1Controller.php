<?php
class Ligue1Controller {
    private $db, $css_files, $js_files, $authenticated;

    public function __construct($Db, $css_files, $js_files, $authenticated) {
        $this->db = $Db;
        $this->css_files = $css_files;
        $this->js_files = $js_files;
        $this->authenticated = $authenticated;
    }

    public function conversion_date($date) {
        $mois = [
            "01" => "janvier",
            "02" => "février",
            "03" => "mars",
            "04" => "avril",
            "05" => "mai",
            "06" => "juin",
            "07" => "juillet",
            "08" => "août",
            "09" => "septembre",
            "10" => "octobre",
            "11" => "novembre",
            "12" => "décembre"
        ];

        list($annee, $moisNum, $jour) = explode('-', $date);

        $nouv = intval($jour) . ' ' . $mois[$moisNum] . ' ' . $annee;
        return $nouv;
    }

    public function load() {

        $pageTitle = "Lose1Max | Ligue 1";

        /* Matchs Ligue 1 */
        $liste_matchs = $this->db->request("SELECT E1.nom_equipe AS equipe_dom, E1.url_logo AS logo_dom, E2.nom_equipe AS equipe_ext, E2.url_logo AS logo_ext, M.Date_match, M.Heure, M.score1, M.score2 
                                    FROM `matchs-l1` AS M 
                                    JOIN `equipes` AS E1 
                                    ON E1.id_equipe = M.EquipeDom 
                                    JOIN `equipes` AS E2 
                                    ON E2.id_equipe = M.EquipeExt 
                                    WHERE M.journee = 1
                                    ORDER BY M.Date_match, M.Heure; 
                                    ");
        
        /* - Classememt Ligue 1 - */
        $classement = $this->db->request("SELECT E.url_logo, C.position, E.nom_equipe, C.points, C.joues, C.victoires, C.nuls, C.defaites, C.buts_pour, C.buts_contre, C.difference_buts
                                        FROM `classement_ligue1` AS C, `equipes` AS E
                                        WHERE C.id_equipe = E.id_equipe
                                        ORDER BY C.position;
                                        ");

        /* === CSS === */
        $import = $this->css_files;

        $css_list = [
                $import["fonts"], $import["base"], 
                $import["ligue1"], $import["header"], 
                $import["footer"], $import["sponsor"],
            ];

        /* === JS === */
        $import = $this->js_files;

        $js_list = [
            $import["sponsor"], $import["ligue1"],
        ];


        /* === View === */
        require "app/views/head.phtml";
        require "app/views/main_header.phtml";
        require "app/views/ligue1.phtml";
        require "app/views/footer.phtml";
    }
}

?>
