<?php
class HomeController {
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

        $pageTitle = "Lose1Max | Accueil";

        /* === SQL === */
        /* - Articles - */
        $articles = $this->db->request("SELECT A.id_article, A.url_image, A.Titre, A.description, A.Date_publication, J.Nom, J.Prenom
                                        FROM `articles` AS A, `journalistes` AS J
                                        WHERE A.id_journaliste = J.id_journaliste
                                        ORDER BY A.Date_publication DESC
                                        LIMIT 4;
                                        ");

        /* - Classememt Ligue 1 - */
        $classement = $this->db->request("SELECT C.position, E.nom_equipe, C.joues, C.points
                                          FROM `classement_ligue1` AS C, `equipes` AS E
                                          WHERE C.id_equipe = E.id_equipe
                                          ORDER BY C.position;
                                        ");

        /* - Match de la semaine - */
        $matchs_actuels = $this->db->req_prepare("SELECT m.competition, ed.nom_equipe AS equipe_dom, ed.url_logo AS logo_dom,ee.nom_equipe AS equipe_ext, ee.url_logo AS logo_ext, m.Date_match, m.Heure
                                                  FROM `matchs` m
                                                  JOIN `equipes` ed ON m.EquipeDom = ed.id_equipe
                                                  JOIN `equipes` ee ON m.EquipeExt = ee.id_equipe
                                                  WHERE :aujourdhui <= m.Date_match
                                                  ORDER BY m.Date_match DESC
                                                  LIMIT 5;", 
                                                [
                                                    ':aujourdhui' => date('Y-m-d'),
                                                ]
                                            );

        /* === CSS === */
        $import = $this->css_files;

        $css_list = [
                $import["fonts"], $import["base"], 
                $import["position_homepage"], $import["style_homepage"],
                $import["header"], $import["footer"],
                $import["sponsor"]
            ];


        /* === JS === */
        $import = $this->js_files;

        $js_list = [
            $import["sponsor"], $import["homepage"],
            ];


        /* === UNE === */
        $une = $articles[0];
        $id_une = $une["id_article"];
        $url_image_une = $une["url_image"];
        $titre_une = $une["Titre"];
        $description_une = $une["description"];

        $dateUne = $this->conversion_date($une["Date_publication"]);

        $journaliste = $une["Prenom"] . " " . $une["Nom"];


        /* === ACTUALITES === */
        $actulites = array_slice($articles, 1, 4);


        /* === View === */
        require "app/views/head.phtml";
        require "app/views/main_header.phtml";
        require "app/views/homepage.phtml";
        require "app/views/footer.phtml";
    }
}
?>