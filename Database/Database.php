<?php
class Database {
    private $bdd;

    public function getPDO() {
        return $this->bdd;
    }

    public function load() {
        $servername = 'localhost';
        $username = 'root';
        $password = '';

        try {
            $this->bdd = new PDO("mysql:host=$servername;dbname=lose1max;charset=utf8", $username, $password);
            $this->bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } 
        catch(PDOException $e){
            die("Erreur connexion : " . $e->getMessage());
        }
    }

    public function request($requete) {
        try {
            $resultat = $this->bdd->query($requete);
            return $resultat->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            die("Erreur dans la requête SQL : " . $e->getMessage());
        }
    }

    public function req_prepare($requete, $params = []) {
        try {
            $stmt = $this->bdd->prepare($requete);
            $stmt->execute($params);
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            die("Erreur dans la requête préparée : " . $e->getMessage());
        }
    }

    public function req_prepare_statement($requete, $params = []) {
        try {
            $stmt = $this->bdd->prepare($requete);
            $stmt->execute($params);
            return $stmt;
        } catch (PDOException $e) {
            die("Erreur dans la requête préparée : " . $e->getMessage());
        }
    }
}
?>