console.log("El archivo JS está cargado correctamente.");

document.addEventListener('DOMContentLoaded', () => {
  const banner = document.getElementById('cookie-banner');
  const acceptBtn = document.getElementById('accept-btn');
  const rejectBtn = document.getElementById('reject-btn');

  // Mostrar el banner solo si no se ha decidido aún
  if (!localStorage.getItem('cookiesAccepted')) {
    banner.style.display = 'block'; // Mostrar el banner si no se ha decidido
  } else {
    banner.style.display = 'none'; // Si ya se ha decidido, ocultar el banner
  }

  // Al hacer clic en "Aceptar"
  acceptBtn.addEventListener('click', () => {
    console.log("¡Aceptar clickeado!");  // Ver si el botón aceptar funciona
    localStorage.setItem('cookiesAccepted', 'true');
    banner.style.display = 'none'; // Ocultar el banner después de la decisión
    location.reload(); // Recargar la página para cargar los scripts de terceros
  });

  // Al hacer clic en "Rechazar"
  rejectBtn.addEventListener('click', () => {
    console.log("¡Rechazar clickeado!");  // Ver si el botón rechazar funciona
    localStorage.setItem('cookiesAccepted', 'false');
    banner.style.display = 'none'; // Ocultar el banner después de la decisión
  });

  // Si el usuario ya ha aceptado las cookies, cargar scripts de terceros
  if (localStorage.getItem('cookiesAccepted') === 'true') {
    const gaScript = document.createElement('script');
    gaScript.src = 'https://www.googletagmanager.com/gtag/js?id=TU-ID';
    document.head.appendChild(gaScript);

    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());
    gtag('config', 'TU-ID');
  }
});
