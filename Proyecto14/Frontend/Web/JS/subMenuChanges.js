document.addEventListener("DOMContentLoaded", () => {
    const toggleMenu = document.getElementById("toggle-menu");
  
    toggleMenu.addEventListener("change", () => {
      if (toggleMenu.checked) {
        document.body.classList.add("no-scroll");
      } else {
        document.body.classList.remove("no-scroll");
      }
    });

    const checkbox = document.getElementById('toggle-menu');
    const headerTitle = document.querySelector('.header-title');

    checkbox.addEventListener('change', () => {
      if (checkbox.checked) {
        headerTitle.style.color = '#e22020';
      } else {
        headerTitle.style.color = '';
      }
    });
  });