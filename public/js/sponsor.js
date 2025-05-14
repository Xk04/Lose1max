document.addEventListener("DOMContentLoaded", function() {
  const sponsorLogo = document.getElementById('sponsorLogo');

  if (!sponsorLogo) {
    console.error("Élément #sponsorLogo introuvable");
    return;
  }

  let position = 0;
  const vitesse = 1.5;

  function panneau() {
    position -= vitesse;
    // Quand on dépasse la moitié (grâce au doublon), on recommence
    if (Math.abs(position) >= sponsorLogo.offsetWidth / 2) {
      position = 0;
    }
    sponsorLogo.style.transform = `translateX(${position}px)`;
  }

  // Lancer l'animation toutes les 16ms (environ 60 FPS)
  setInterval(panneau, 16);
});
