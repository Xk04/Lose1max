<?php
class ArticleController {
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

    public function load($numArticle) {

        $pageTitle = "Lose1Max | News";

        /* === SQL === */
        /* - Articles - */
        $contenu_article = $this->db->req_prepare("SELECT A.url_image, A.Titre, A.contenu, A.Date_publication, J.Nom, J.Prenom
                                               FROM `articles` AS A, `journalistes` AS J
                                               WHERE A.id_journaliste = J.id_journaliste AND A.id_article = :numArticle
                                               ORDER BY A.Date_publication DESC;",
                                               [
                                                'numArticle' => $numArticle
                                               ]
                                        );

        $suite_articles = $this->db->req_prepare("SELECT A.id_article, A.url_image, A.Titre, A.description, A.Date_publication, J.Nom, J.Prenom
                                            FROM `articles` AS A, `journalistes` AS J
                                            WHERE A.id_journaliste = J.id_journaliste AND A.id_article != :numArticle
                                            ORDER BY A.Date_publication DESC
                                            LIMIT 3;",
                                            [
                                            'numArticle' => $numArticle
                                            ]
                                    );

        /* === CSS === */
        $import = $this->css_files;

        $css_list = [
                $import["fonts"], $import["base"], 
                $import["article"],
                $import["header"], $import["footer"],
                $import["sponsor"]
            ];


        /* === JS === */
        $import = $this->js_files;

        $js_list = [
            $import["sponsor"],
            ];

        
        /* === Lecture === */
        $contenu_article = $contenu_article[0];
        $image = "public/images/actualites/" . $contenu_article["url_image"];
        $titre = $contenu_article["Titre"];
        $contenu = $contenu_article["contenu"];
        $date_actu = $this->conversion_date($contenu_article["Date_publication"]);
        $journaliste_actu = $contenu_article["Prenom"] . " " . $contenu_article["Nom"];


        /* === View === */
        require "app/views/head.phtml";
        require "app/views/main_header.phtml";
        require "app/views/articles.phtml";
        require "app/views/footer.phtml";
    }

}


?>