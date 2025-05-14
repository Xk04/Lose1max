# Système de connexion

**Menu principal : [revenir à l'accueil](../../README.md)**

## 📋 **Connexion / Inscription / Cookies**

### 🚀 *Connexion et Inscription*

Lors de l'envoi d'un formulaire depuis les pages register ou login, l'index.php appel le controller ConnexionController afin d'effectuer une tentative de connexion

```PHP
// Pour la connexion
public function logInPortal($username, $password) {}

//Pour l'inscription
public function registerPortal($username, $email, $password) {}

// puis appel de session_cookie()
```
PS : les erreurs ne sont pas renvoyées par php, mais catch par le script JS.
Si cela arrive on renvoie la page

### 🚀 *Cookies et Tokens*

Système de token, afin de sécuriser les comptes utilisateurs

```PHP
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

```