document.addEventListener('DOMContentLoaded', () => {
  const openBtn = document.getElementById('sing-up-button');
  const signupPanel = document.getElementById('signup-id');
  const closeBtn = document.getElementById('signup-close-btn');
  const backdrop = document.getElementById('background-grey');

  // Hover: cambio de imagen
  closeBtn.addEventListener('mouseover', () => {
    closeBtn.src = '/Proyecto/Frontend/Web/src/icons/crossRed.png';
  });

  closeBtn.addEventListener('mouseout', () => {
    closeBtn.src = '/Proyecto/Frontend/Web/src/icons/crossWhite.png';
  });

  // Abrir panel
  openBtn.addEventListener('click', () => {
    signupPanel.classList.add('show');
    backdrop.classList.add('show');
    closeBtn.classList.add('show');
    document.body.classList.add('no-scroll');
  });

  // Función para cerrar
  const closeSignup = () => {
    signupPanel.classList.remove('show');
    backdrop.classList.remove('show');
    closeBtn.classList.remove('show');
    document.body.classList.remove('no-scroll');
  };

  closeBtn.addEventListener('click', closeSignup);
  backdrop.addEventListener('click', closeSignup);
});
