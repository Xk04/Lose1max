<?php
class Connexion {
    private $db;

    public function __construct($Db) {
        $this->db = $Db;
    }

    public function session_cookie($username) {
        try {
            $token = bin2hex(random_bytes(32));

            setcookie('username', $username,
                        [
                            'expires' => time() + (86400 * 30), // valable 30 jours
                            'path' => "/",
                        ]
                    );

            setcookie('session', $token, 
                        [
                            'expires' => time() + (86400 * 30), // valable 30 jours
                            'path' => "/",
                        ]
                    );

            $this->db->req_prepare(
                        "UPDATE utilisateurs 
                        SET token_de_session = :token, expiration_token = :expiration
                        WHERE username = :username",
                        [
                            ':token' => $token, 
                            ':username' => $username,
                            ':expiration' => date('Y-m-d H:i:s', time() + 86400 * 30)
                        ]
                        );

            header("Location: index.php?page=home");
            exit;
        } catch (PDOException $e) {
            // Erreur lors de la transmission du cookie de session
            header("Location: index.php?page=error");
            exit;
        }
    }

    public function logInPortal($username, $password) {

        $user = $this->db->req_prepare(
            "SELECT password FROM utilisateurs WHERE username = :username",
            [':username' => $username]
        );

        if (!$user || count($user) === 0 || !password_verify($password, $user[0]['password'])) {
            header("Location: index.php?page=login");
            return;
        }

        if (password_verify($password, $user[0]['password'])) {
            $this->session_cookie($username);
        }
    }

    public function registerPortal($username, $email, $password) {
        $exist = $this->db->req_prepare(
            "SELECT username FROM utilisateurs WHERE username = :username",
            [':username' => $username]
        );

        if ($exist && count($exist) > 0) {
            header("Location: index.php?page=register");
            exit;
            return;
        }
        else if ($username === '' || $email === '' || $password === '') {
            header("Location: index.php?page=register");
            exit;
            return;
        }

        $encrypted_password = password_hash($password, PASSWORD_DEFAULT);

        try {
            $stmt = $this->db->getPDO()->prepare(
                "INSERT INTO utilisateurs (username, email, password) 
                VALUES (:username, :email, :password)"
            );
            $stmt->execute([
                ':username' => $username,
                ':email' => $email,
                ':password' => $encrypted_password
            ]);
            $this->session_cookie($username);
        } 
        
        catch (PDOException $e) {
            header("Location: index.php?page=register");
            exit;
        }
    }

    public function setNullSessionCookie() {
        if (isset($_COOKIE['session']) && isset($_COOKIE['username'])) {
            $this->db->req_prepare("UPDATE `utilisateurs` 
                                    SET `token_de_session`='NULL',`expiration_token`='NULL'
                                    WHERE token_de_session = :token AND username = :username;",
                                    [
                                        ':token' => $_COOKIE['session'],
                                        ':username' => $_COOKIE['username']
                                    ]
                            );
            session_destroy();
            header('Location: index.php?page=home');
            exit;
        } else {
            header("Location: index.php?page=home");
            exit;
        }
    }
}
?>
