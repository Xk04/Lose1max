document.addEventListener("DOMContentLoaded", function() {
    const leftButton = document.querySelectorAll(".left");
    const rightButton = document.querySelectorAll(".right");
    let journee = document.querySelectorAll(".numero_journee");
    let container = document.querySelector('.corps_calendrier');

    function conversion_date(date) {
        mois = {
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
        return parseInt(h) + 'h' + m;
    }

    function gestion_score(score1, score2) {
        if (score1 == null && score2 == null) {
            return "Indisponible";
            
        } else {
            return `${score1} - ${score2}`;
        }
    }

    function chargerJournee(numeroJournee) {
        fetch('index.php?ajax=match_cl&j=' + numeroJournee)
            .then(response => response.json())
            .then(data => {
                journee[0].innerHTML = `${numeroJournee}`;
                journee[1].innerHTML = `${numeroJournee}`;
                container.innerHTML = data.map(match => 
                    `
                    <div class=\"match\">
                            <div class=\"versus\">
                                <img src=\"${"public/images/clubs/" + match.logo_dom}\" alt=\"${match.equipe_dom}\">
                                <p>Vs</p>
                                <img src=\"${"public/images/clubs/" + match.logo_ext}\" alt=\"${match.equipe_ext}\">
                            </div>
                            <div class=\"info\">
                                <div class=\"rdv\">
                                    <p>${conversion_date(match.Date_match)}</p>
                                    <p>${conversion_heure(match.Heure)}</p>
                                </div>
                                <p>Score : ${gestion_score(match.score1, match.score2)}</p>
                            </div>
                        </div>
                    `
                    ).join('');
                })
                .catch(err => console.error('Erreur AJAX :', err));
    }

    function avant() {
        if (parseInt(journee[0].textContent) === 1) {
            chargerJournee(17);
        } else {
            chargerJournee(parseInt(journee[0].textContent)-1);
        }
    }

    function apres() {
        if (parseInt(journee[0].textContent) === 17) {
            chargerJournee(1);
        } else {
            chargerJournee(parseInt(journee[0].textContent)+1);
        }
    }

    leftButton[0].addEventListener("click", avant);
    rightButton[0].addEventListener("click", apres);

    rightButton[1].addEventListener("click", apres);
    leftButton[1].addEventListener("click", avant);
    
});