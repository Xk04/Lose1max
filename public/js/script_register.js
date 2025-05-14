document.addEventListener("DOMContentLoaded", function() {
    // form
    const form = document.querySelector("form");
    //email
    let email = document.querySelector('input[name="email"]');
    //username
    let username = document.querySelector('input[name="username"]');
    //password 1
    let password = document.querySelector('input[name="password"]');
    //password 2
    let check_password = document.querySelector('input[name="check_password"]');
    //terms
    let terms = document.querySelector('input[name="terms"]');
    // erreur
    let formStatus = document.getElementById("formStatus");
    let erreur = "";

    function refreshContent() {
        email = email.value
        username = username.value;
        password = password.value;
        check_password = check_password.value;
        terms = terms.checked;
    }

    function checkingPhase() {
        if (email === '') {
            erreur = "Veuillez saisir un email";
            return false;
        }
        else if (username === '') {
            erreur = "Veuillez saisir un nom d'utilisateur";
            return false;
        }
        else if (password !== check_password) {
            erreur = "Vous n'avez pas confirmé le bon mot de passe";
            return false;
        } 
        else if (password.length < 6) {
            erreur = "Veuillez saisir un mot de passe de 6 caractères minimum";
            return false;
        }
        else if (terms === false) {
            erreur = "Veuillez accepter les conditions générales d'utilisation";
            return false;
        }
        else {
            return true;
        }
    }

    form.addEventListener("submit", function(event) {
        formStatus.textContent = "";
        refreshContent();
        console.log(terms);
        $good_form = checkingPhase();
        if ($good_form == false) {
            formStatus.textContent = "⛔ " + erreur;
            event.preventDefault();
        }
    });
});