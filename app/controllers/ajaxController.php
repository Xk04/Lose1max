<?php
class AjaxController {
    private $db;

    public function __construct($Db) {
        $this->db = $Db;
    }

    public function handle($action, $options=[]) {
        switch ($action) {
            case 'classement_ligue1':
                $this->returnClassementLigue1();
                break;

            case 'classement_champions_league':
                $this->returnClassementChampionsLeague();
                break;

            case 'match_l1':
                $this->returnMatchLigue1($options[0]);
                break;

            case 'match_cl':
                $this->returnMatchChampionsLeague($options[0]);
                break;

            case 'spb_l1':
                $this->returnSpbLigue1();
                break;

            case 'spb_cl':
                $this->returnSpbChampionsLeague();
                break;

            case 'pourcentages':
                $this->returnPctg($options[0]);
                break;

            case 'votes':
                $this->vote(intval($options[0]), $options[1]);
                break;

            default:
                $this->returnError("Action AJAX inconnue : $action");
                break;
        }
    }

    private function returnClassementLigue1() {
        $res = $this->db->request("
            SELECT C.position, E.nom_equipe, C.joues, C.points
            FROM classement_ligue1 AS C
            JOIN equipes AS E ON C.id_equipe = E.id_equipe
            ORDER BY C.position
        ");
        
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($res);
        exit;
    }

    private function returnClassementChampionsLeague() {
        $res = $this->db->request("
            SELECT C.position, E.nom_equipe, C.joues, C.points
            FROM classement_champions_league AS C
            JOIN equipes AS E ON C.id_equipe = E.id_equipe
            ORDER BY C.position
        ");
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($res);
        exit;
    }

    private function returnMatchLigue1($journee) {
        $res = $this->db->req_prepare("SELECT E1.nom_equipe AS equipe_dom, E1.url_logo AS logo_dom, E2.nom_equipe AS equipe_ext, E2.url_logo AS logo_ext, M.Date_match, M.Heure, M.score1, M.score2 
                                    FROM `matchs-l1` AS M 
                                    JOIN `equipes` AS E1 
                                    ON E1.id_equipe = M.EquipeDom 
                                    JOIN `equipes` AS E2 
                                    ON E2.id_equipe = M.EquipeExt 
                                    WHERE M.journee = :journee
                                    ORDER BY M.Date_match, M.Heure; 
                                    ",
                                    [
                                        'journee' => $journee
                                    ]
                                );
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($res);
        exit;
    }

    private function returnMatchChampionsLeague($journee) {
        $res = $this->db->req_prepare("SELECT E1.nom_equipe AS equipe_dom, E1.url_logo AS logo_dom, E2.nom_equipe AS equipe_ext, E2.url_logo AS logo_ext, M.Date_match, M.Heure, M.score1, M.score2 
                                    FROM `matchs-cl` AS M 
                                    JOIN `equipes` AS E1 
                                    ON E1.id_equipe = M.EquipeDom 
                                    JOIN `equipes` AS E2 
                                    ON E2.id_equipe = M.EquipeExt 
                                    WHERE M.journee = :journee
                                    ORDER BY M.Date_match, M.Heure; 
                                    ",
                                    [
                                        'journee' => $journee
                                    ]
                                );
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($res);
        exit;
    }

    private function returnSpbLigue1() {
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
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($match_l1);
        exit;
    }

    private function returnSpbChampionsLeague() {
        $match_cl = $this->db->req_prepare("SELECT 
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
                                             WHERE :aujourdhui <= m.Date_match AND m.competition = \"CL\"
                                            ORDER BY m.Date_match ASC, m.Heure ASC
                                            LIMIT 9;",
                                            [
                                                ':aujourdhui' => date('Y-m-d'),
                                            ]
        );
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($match_cl);
        exit;
    }

    private function returnPctg($match_id) {
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
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($pourcentages);
        exit;
    }

    private function vote($match_id, $choice) {
        if (isset($_COOKIE['session']) && isset($_COOKIE['username'])) {
            $username = $this->db->req_prepare("SELECT username
                                            FROM `utilisateurs`
                                            WHERE token_de_session = :token;
                                            ", 
                                            [
                                                ':token' => $_COOKIE['session']
                                            ]
                                        );
            
            if (empty($username)) {
                $this->returnError("Utilisateur non trouvé.");
            }

            $username = $username[0]['username'];

            $exist = $this->db->req_prepare("SELECT COUNT(*) FROM `votes` 
                                            WHERE `votes`.`username` = :username
                                            AND `votes`.`match_id`= :match_id;
                                            ",
                                            [
                                                ':username' => $username,
                                                ':match_id' => $match_id
                                            ]
                                        );

            if (!empty($exist) && $exist[0]['COUNT(*)'] > 0) {
                $this->db->req_prepare("UPDATE `votes`
                                        SET `votes`.`vote`= :choix
                                        WHERE `votes`.`username`=  :username
                                        AND `votes`.`match_id` = :match_id ;
                                        ", 
                                        [
                                            ':choix' => $choice,
                                            ':username' => $username,
                                            ':match_id' => $match_id
                                        ]
                                    );
            } else {
                $this->db->req_prepare("INSERT INTO `votes`(`username`, `match_id`, `vote`) 
                                        VALUES (:username, :match_id, :choix);
                                        ", 
                                        [
                                            ':username' => $username,
                                            ':match_id' => $match_id,
                                            ':choix' => $choice,
                                        ]
                                    );
            }
            $this->jsonResponse(["status" => "vote enregistré"]);
            exit;
        }
        else {
            $this->returnError("Cookies d'identification manquants.");
            exit;
        }
    }

    private function returnError($message) {
        http_response_code(400);
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode(["error" => $message]);
        exit;
    }
}
?>
