<?php
class SportBettingsController {
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

    public function returnStats($match_id) {
        $pourcentages = $this->db->req_prepare("SELECT
                                                SUM(vote = '1') AS p_e1,
                                                SUM(vote = 'N') AS p_N,
                                                SUM(vote = '2') AS p_e2,
                                                COUNT(*) AS total_votes
                                                FROM votes
                                                WHERE match_id = :match_id ;
                                                ",
                                                [
                                                    'match_id' => $match_id,
                                                ]
                                            );
        return $pourcentages;
    }

    public function load() {
        $pageTitle = "Lose1Max | Paris Sportifs";

        /* === SQL === */
        $match_l1 = $this->db->req_prepare("SELECT 
                                                m.match_id,                         
                                                m.Date_match,
                                                m.Heure,
                                                ed.nom_equipe AS equipe_dom,
                                                ed.url_logo AS logo_dom,
                                                ee.nom_equipe AS equipe_ext,
                                                ee.url_logo AS logo_ext,
                                                ed.stade AS Stade                  
                                            FROM matchs m
                                            JOIN equipes ed ON m.EquipeDom = ed.id_equipe
                                            JOIN equipes ee ON m.EquipeExt = ee.id_equipe
                                             WHERE :aujourdhui <= m.Date_match AND m.competition = \"L1\"
                                            ORDER BY m.Date_match ASC, m.Heure ASC
                                            LIMIT 9;",
                                            [
                                                ':aujourdhui' => date('Y-m-d'),
                                            ]
        );


        /* === Set de variables bigmacth === */
        /* - M1 - */
        if (!empty($match_l1)) {
            
        } else {
            $e1 = "Équipe domicile";
            $url_e1 = "default-logo.png";
            $p_e1 = $p_n = $p_e2 = 0;
        }

        

        /* === CSS === */
        $import = $this->css_files;

        $css_list = [
                $import["fonts"], $import["base"], 
                $import["2nd_header"], $import["sport_bettings"],
                $import["footer"], $import["sponsor"],
            ];

        /* === JS === */
        $import = $this->js_files;

        $js_list = [
            $import["sport_bettings"]
        ];


        /* View */
        require "app/views/head.phtml";
        require "app/views/main_header.phtml";
        require "app/views/sportbettings.phtml";
        require "app/views/footer.phtml";
        
    }
}

?>
