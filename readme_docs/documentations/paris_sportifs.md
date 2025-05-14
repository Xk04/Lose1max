# **Paris Sportifs**

**Menu principal : [revenir à l'accueil](../../README.md)**

## _**Paris Sportifs**_

La page paris sportifs est accessible depuis le menu principal du site.
Elle permet de parier sur les matchs de la Ligue 1 et de la Ligue des champions. 

---
### **Accès**

- L’utilisateur doit être **connecté** pour pouvoir parier.
Un utilisateur peut **voter une seule fois par match** (choix : Équipe 1 / Nul / Équipe 2)


### **Choix de la compétition**

 - On peut choisir entre la Ligue 1 et la Ligue des champions avec un bouton radio.
    Par défaut, la Ligue 1 est sélectionnée.
    Si la ligue 1 est sélectionnée, on peut parier sur les matchs de la Ligue 1 de la prochaine journée seulement (c'est à dire sur 9 matchs à la fois). 

```JS
function returnMatch(ligue, match, type) {...}

function chargerHTML(ligue, data) {
        let html = '';
        if (data.length < 2) {
            html += `<div class=\"big-matchs\">`;
            for (let i = 0; i < data.length; i++) {
                const match = data[i];
                html += returnMatch(ligue, match, "big-match");
            }
            html += "</div>";

        } else {
            html += `<div class=\"big-matchs\">`
            for (let i = 0; i < 2; i++) {
                const match = data[i];
                html += returnMatch(ligue, match, "big-match");
            }
            html += "</div>";

            html += `<div class=\"small-matchs\">`
            for (let i = 2; i < data.length; i++) {
                const match = data[i];
                html += returnMatch(ligue, match, "small-match");
            }
            html += "</div>";
                
        }
        return html;
    }

    function chargerMatch(ligue) {
        fetch('index.php?ajax=' + ligue)
            .then(response => response.json())
            .then(data => {
                const container = document.getElementById('match');
                container.innerHTML = chargerHTML(ligue, data);
                setVoteButtons();
                refresh();
            })
            .catch(err => console.error('Erreur AJAX :', err));
    }

```
    
### **Système de vote**

 - Pour chaque match, l'utilisateur peut cliquer sur l'un des 3 boutons :
    - *Équipe 1*
    - *Nul*
    - *Équipe 2*
 - Le vote est ensuite enregistré dans la table `votes` de la base de données, avec :
    - le `username`
    - le `match_id`
    - le type de vote (`1`, `N`, `2`)

- envoi du vote :
```JS
// Votes
    function setVoteButtons() {
        let matchList = document.querySelectorAll("#match [data-id_match]");
        matchList.forEach(match => {
            let e1Btn = match.querySelector("button:nth-child(1)");
            let nulBtn = match.querySelector("button:nth-child(2)");
            let e2Btn = match.querySelector("button:nth-child(3)");
            e1Btn.addEventListener("click", function () {
                sendVote(match.dataset.id_match, "1");
            });
            nulBtn.addEventListener("click", function () {
                sendVote(match.dataset.id_match, "N");
            });
            e2Btn.addEventListener("click", function () {
                sendVote(match.dataset.id_match, "2");
            });
        });
    }

    function sendVote(id_match, choice) {
        if (connected) {
            console.log(id_match, choice);
            fetch('index.php?ajax=votes', {
                method: "POST",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded",
                },
                body: `match=${id_match}&choice=${choice}`
            })
            .then(() => refresh())
            .catch(err => console.error("Erreur lors du vote :", err));
        } else {
            let erreur = document.getElementById("erreur");
            erreur.textContent = "⛔ Veuillez vous connecter pour parier !";
        }
    }
```
On rajoute un event à chaque bouton lors d'un changement de ligue

### Barres de pourcentages dynamiques

- Les votes sont affichés sous forme de **barres de pourcentage** :
  - Une barre pour l’équipe 1
  - Une barre pour le match nul
  - Une barre pour l’équipe 2

- Ces barres se mettent à jour en **temps réel** (AJAX) après chaque vote.

- Si aucun vote n’a été effectué, les barres sont initialisées par défaut à **33% / 33% / 34%**.

- L'actualisation s'effectue essentiellement ici :
```JS
function setSize(match, data) {
    data = data[0];
    if (data.total_votes == 0) {
        pourcent_e1 = 33;
        pourcent_e2 = 33;
        pourcent_N = 100 - pourcent_e1 - pourcent_e2;
    } else {
        pourcent_e1 = parseInt(parseInt(data.p_e1) / parseInt(data.total_votes) * 100);
        pourcent_e2 = parseInt(parseInt(data.p_e2) / parseInt(data.total_votes) * 100);
        pourcent_N = 100 - pourcent_e1 - pourcent_e2;
    }

    // equipe 1
    let e1 = match.querySelector(".equipe1");
    let e1_value = e1.querySelector("span");
    e1_value.textContent = pourcent_e1;
    e1.style.width = pourcent_e1 + "%";

    // nul
    let nul = match.querySelector(".nul");
    let nul_value = nul.querySelector("span");
    nul_value.textContent = pourcent_N;
    nul.style.width = pourcent_N + "%";

    // equipe 2
    let e2 = match.querySelector(".equipe2");
    let e2_value = e2.querySelector("span");
    e2_value.textContent = pourcent_e2;
    e2.style.width = pourcent_e2 + "%";
}

function chargerPctg() {
    let matchList = document.querySelectorAll("#match [data-id_match]");
    for (let i=0 ; i<matchList.length ; i++) {
        let match = matchList[i];
        fetch('index.php?ajax=pourcentages' + '&match=' + match.dataset.id_match)
        .then(response => response.json())
        .then(data => {
            setSize(match, data);
        })
        .catch(err => console.error('Erreur AJAX :', err));
    }
}

// Temps réel - Horloge
function refresh() {
    chargerPctg();
}

function clock(k) {
    setInterval(refresh, k);
}

setVoteButtons();
refresh();
clock(3000);
```