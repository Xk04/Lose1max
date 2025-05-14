#  **Add Match**

**Menu principal : [Revenir à l’accueil](./README.md)**


## _**Fonctionnement**_

L’ajout de matchs permet d’ajouter au site en insérant de **nouveaux matchs** à venir dans la base de données, soit pour la **Ligue 1** (L1), soit pour la **Champions League** (CL).  
Cette fonctionnalité est réservée à l'**administrateur** (root) .


### **Accès**

- Seuls les utilisateurs autorisés peuvent accéder à la page d’ajout de matchs (`addmatch.phtml`)
- Il est conseillé de sécuriser l’accès à cette page avec un contrôle de rôle (non implémenté par défaut).



### **Champs du formulaire**

Le formulaire d’ajout permet de renseigner :

- 🏆 **Compétition** (`L1` ou `CL`) — bouton radio
- 🏟️ **Équipe domicile** — liste déroulante alimentée dynamiquement depuis la table `equipes`
- 🧳 **Équipe extérieure** — idem
- 🎯 **Score equipe 1** - entier
- 🎯 **Score equipe 2** - idem
- 🗓️ **Date** — champ de type `date`
- ⏰ **Heure** — champ de type `time`
- 📅 **Journée** — entier



### Insertion en base de données

Une fois le formulaire soumis :

- Une requête SQL `UPDATE` est exécutée :
```php
UPDATE `matchs-cl` 
    SET `EquipeDom`= :dom,
    `EquipeExt`= :ext,
    `Score1`= :score_dom,
    `Score2`= :score_ext,
    `Date_match`= :date_match,
    `Heure`= :heure,
    `Round`= NULL,
    `Journee`= :journee
    WHERE EquipeDom = :dom AND EquipeExt = :ext 
    AND Date_match = :date_match;
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