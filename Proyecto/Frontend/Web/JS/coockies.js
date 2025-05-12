document.addEventListener('DOMContentLoaded', () => {
  const banner = document.getElementById('cookie-banner');
  const acceptBtn = document.getElementById('accept-btn');
  const rejectBtn = document.getElementById('reject-btn');

  const cookiesDecision = localStorage.getItem('cookiesAccepted');

  if (!cookiesDecision) {
    banner.style.display = 'block';
  } else {
    banner.style.display = 'none';
  }

  acceptBtn.addEventListener('click', () => {
    localStorage.setItem('cookiesAccepted', 'true');
    banner.style.display = 'none';
    location.reload();
  });

  rejectBtn.addEventListener('click', () => {
    localStorage.setItem('cookiesAccepted', 'false');
    banner.style.display = 'none';
  });

  // Cargar Google Analytics solo si se aceptaron
  if (cookiesDecision === 'true') {
    const gaScript = document.createElement('script');
    gaScript.src = 'https://www.googletagmanager.com/gtag/js?id=TU-ID';
    gaScript.async = true;
    document.head.appendChild(gaScript);

    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());
    gtag('config', 'TU-ID');
  }
});
