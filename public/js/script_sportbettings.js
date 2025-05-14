document.addEventListener("DOMContentLoaded", function() {

    // est connecté ou non
    let connected;
    const connexion = document.querySelector(".login");
    connected = (connexion) ? false : true;

    // choix de la ligue
    const ligue1_button = document.getElementById("ligue1");
    const champions_league_button = document.getElementById("champions_league");

    // Affichage horaire
    function conversion_date(date) {
        const mois = {
            "01": "janvier",
            "02":"février",
            "03": "mars",
            "04": "avril",
            "05": "mai",
            "06": "juin",
            "07": "juillet",
            "08": "août",
            "09": "septembre",
            "10": "octobre",
            "11": "novembre",
            "12": "décembre"
        };
        let [annee, moisNum, jour] = date.split('-');
        return parseInt(jour) + ' ' + mois[moisNum] + ' ' + annee;
    }

    function conversion_heure(heure) {
        let [h, m, s] = heure.split(":");
        return parseInt(h, 10) + 'h' + m;
    }

    // Affichage : barre de pourcentage
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

    
    // Load data
    function returnMatch(ligue, match, type) {
        let ligne1_a;
        let ligne1_b;
        let small;
        let date_format;
        let button_class;
        if (ligue == "spb_l1") {
            button_class = "button-l1";
        } else {
            button_class = "button-cl";
        }
        if (type == "small-match") {
            ligne1_a = `<div class="ligne1">`;
            ligne1_b = `</div>`;
            small = "small-";
            date_format = "small-date";
        } else {
            ligne1_a = ``;
            ligne1_b = ``;
            small = "";
            date_format = "big-date";
        }
        if (match.match_id === 519){
            match.Stade = "finale.jpg";
        }
        return `
                <div class="${type}" data-id_match=\"${match.match_id}\">
                    ${ligne1_a}
                        <img class="head-img" src="public/images/stades/${match.Stade}" alt="Monaco"/>
                        <div class="${small}match-main">
                            <img src="public/images/clubs/${match.logo_dom}" alt="${match.equipe_dom}" />
                            <div class="${date_format}">
                                <p>${conversion_date(match.Date_match)}</p>
                                <p>${conversion_heure(match.Heure)}</p>
                            </div>
                            <img src="public/images/clubs/${match.logo_ext}" alt="${match.equipe_ext}" />
                        </div>
                        <div class="match-footer">
                            <button class="${button_class}">${match.equipe_dom}</button>
                            <button class="${button_class}">Nul</button>
                            <button class="${button_class}">${match.equipe_ext}</button>
                        </div>
                    ${ligne1_b}
                    <div class="barre-pourcentage">
                        <div class="equipe1"><p><span>33</span>%</p></div>
                        <div class="nul"><p><span>33</span>%</p></div>
                        <div class="equipe2"><p><span>33</span>%</p></div>
                    </div>
                </div>
        `;
    }

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

    // Events
    ligue1_button.addEventListener("change", function () {
        chargerMatch("spb_l1");
    });
    champions_league_button.addEventListener("change", function () {
        chargerMatch("spb_cl");
    });


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
});