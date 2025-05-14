<?php
class AddMatchController {
    private $db, $css_files, $js_files, $authenticated;

    public function __construct($Db, $css_files, $js_files, $authenticated) {
        $this->db = $Db;
        $this->css_files = $css_files;
        $this->js_files = $js_files;
        $this->authenticated = $authenticated;
    }

    public function add_data($match, $dom, $ext, $score_dom, $score_ext, $date, $heure, $journee) {
        try {
            if ($match == 'ligue1') {
                $resultat = $this->db->req_prepare_statement("UPDATE `matchs-l1` 
                                                              SET `EquipeDom`= :dom,
                                                              `EquipeExt`= :ext,
                                                              `Score1`= :score_dom,
                                                              `Score2`= :score_ext,
                                                              `Date_match`= :date_match,
                                                              `Heure`= :heure,
                                                              `Journee`= :journee
                                                              WHERE EquipeDom = :dom AND EquipeExt = :ext AND Date_match = :date_match;
                                                            ", 
                                                    [
                                                        ':dom' => intval($dom),
                                                        ':ext' => intval($ext),
                                                        ':score_dom' => intval($score_dom),
                                                        ':score_ext' => intval($score_ext),
                                                        ':date_match' => $date,
                                                        ':heure' => $heure,
                                                        ':journee' => intval($journee)
                                                    ]
                                                );
                if ($resultat->rowCount() === 0) {
                    echo "Aucune ligne mise à jour. Vérifie les critères WHERE.";
                }

                header('Location: index.php?page=addmatch');
                exit;
                return true;
            }
            else if ($match == 'champions_league') {
                $resultat = $this->db->req_prepare_statement("UPDATE `matchs-cl` 
                                                    SET `EquipeDom`= :dom,
                                                        `EquipeExt`= :ext,
                                                        `Score1`= :score_dom,
                                                        `Score2`= :score_ext,
                                                        `Date_match`= :date_match,
                                                        `Heure`= :heure,
                                                        `Round`= NULL,
                                                        `Journee`= :journee
                                                    WHERE EquipeDom = :dom AND EquipeExt = :ext AND Date_match = :date_match;
                                                    ", 
                                                    [
                                                        ':dom' => intval($dom),
                                                        ':ext' => intval($ext),
                                                        ':score_dom' => intval($score_dom),
                                                        ':score_ext' => intval($score_ext),
                                                        ':date_match' => $date,
                                                        ':heure' => $heure,
                                                        ':journee' => intval($journee)
                                                    ]
                                                );
                if ($resultat->rowCount() === 0) {
                    echo "Aucune ligne mise à jour. Vérifie les critères WHERE.";
                } 
                header('Location: index.php?page=addmatch');
                exit;
                return true;
            } else {
                header('Location: index.php?page=addmatch');
                return false;
            }
        }
        catch (PDOException $e) {
            header('Location: index.php?page=addmatch');
            return false;
        }
    }

    public function isRoot() {
        if ($this->authenticated == true) {
            $root = $this->db->request("SELECT username, token_de_session
                                        FROM `utilisateurs`
                                        WHERE username = 'root'
                                        LIMIT 1;
                                        ");
            $root = $root[0];
            return ($_COOKIE['username'] == $root['username'] && $_COOKIE['session'] == $root['token_de_session']);
        } else {
            return false;
        }
    }

    public function load() {

        $pageTitle = "Lose1Max | Admin";

        /* === SQL === */
        /* - Equipes - */
        $equipes = $this->db->request("SELECT id_equipe, nom_equipe
                                       FROM `equipes`
                                       ORDER BY nom_equipe;
                                       ");

        /* === CSS === */
        $import = $this->css_files;

        $css_list = [
                $import["fonts"], $import["base"], 
                $import["admin_header"], $import["add_match"],
                $import["footer"],
            ];


        /* === JS === */
        $import = $this->js_files;

        $js_list = [
            ];

        /* === View === */
        require "app/views/head.phtml";
        require "app/views/main_header.phtml";
        require "app/views/addMatch.phtml";
        require "app/views/footer.phtml";
    }
}

?>