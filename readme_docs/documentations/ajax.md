# Backend

**Menu principal : [revenir à l'accueil](../../README.md)**

## 📋 **Gestion des requêtes AJAX**

### 🚀 *Cas d'utilisation*

- Homepage : boutons ligue1 et champions league
- Ligue 1, Champions League : boutons gauche, droite pour le calendrier
- Paris sportifs : boutons ligue1 et champions league + appels toutes les 3s des pourcentages des match (actualisation en temps réels)

### 🚀 *handle*

```PHP
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
```

permet de rediriger la requête vers une fonction qui exécutera une fonction SQL