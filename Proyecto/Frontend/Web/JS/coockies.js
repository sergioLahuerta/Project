const banner = document.getElementById('cookie-banner');
const acceptBtn = document.getElementById('accept-btn');
const rejectBtn = document.getElementById('reject-btn');

if (!localStorage.getItem('cookiesAccepted')) {
  banner.style.display = 'block';
}

acceptBtn.addEventListener('click', () => {
  localStorage.setItem('cookiesAccepted', 'true');
  banner.style.display = 'none';
  location.reload(); // Recargar para que se carguen scripts ahora permitidos
});

rejectBtn.addEventListener('click', () => {
  localStorage.setItem('cookiesAccepted', 'false');
  banner.style.display = 'none';
});

// Cargar Analytics si aceptó
if (localStorage.getItem('cookiesAccepted') === 'true') {
  var gaScript = document.createElement('script');
  gaScript.src = 'https://www.googletagmanager.com/gtag/js?id=TU-ID';
  document.head.appendChild(gaScript);

  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'TU-ID');
}