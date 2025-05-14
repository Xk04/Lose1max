document.addEventListener("DOMContentLoaded", function() {
    const ligue1_btn = document.querySelector(".button_l1");
    const champions_btn = document.querySelector(".button_cl");

    function chargerClassement(ligue) {
        fetch('index.php?ajax=' + ligue)
            .then(response => response.json())
            .then(data => {
                const container = document.getElementById('classement-container');
                container.innerHTML = `
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th class="column_pos">Pos</th>
                                                    <th class="column_club">Équipe</th>
                                                    <th class="column_j">J</th>
                                                    <th class="column_pts">Pts</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                        ` + 
                    data.map(team => `
                        <tr>
                            <td class="column_pos">${team.position}</td>
                            <td class="column_club">${team.nom_equipe}</td>
                            <td class="column_j">${team.joues}</td>
                            <td class="column_pts">${team.points}</td>
                        </tr>
                    `).join('') + '</tbody></table>';
            })
            .catch(err => console.error('Erreur AJAX :', err));
    }

    // Position 0 correspond au classement ligue1
    // Position 1 correspond au classement champions league
    let position = 0;

    function changePosition() {
        if (position === 1) {
            ligue1_btn.classList.add("active");
            champions_btn.classList.remove("active");
            // Ligue 1
            ligue1_btn.style.padding = "1% 15%";
            ligue1_btn.style.background = "#085fff";
            ligue1_btn.style.border = "2px solid #ff7fde";
            ligue1_btn.style.boxShadow = "0 0 10px rgba(255, 127, 222, 0.5)";

            champions_btn.style.padding = "1% 5%";
            champions_btn.style.background = "none";
            champions_btn.style.border = "none";
            chargerClassement("classement_ligue1");
            position = 0;
        } else {
            ligue1_btn.classList.remove("active");
            champions_btn.classList.add("active");
            // Champions League
            ligue1_btn.style.padding = "1% 12%";
            ligue1_btn.style.background = "none";
            ligue1_btn.style.border = "none";
            ligue1_btn.style.boxShadow = "none";

            champions_btn.style.padding = "1% 8%";
            champions_btn.style.background = "#201e5f";
            champions_btn.style.border = "2px solid #5d2de6";
            chargerClassement("classement_champions_league");
            position = 1;
        }
    }

    ligue1_btn.addEventListener("click", changePosition);
    champions_btn.addEventListener("click", changePosition);
});


