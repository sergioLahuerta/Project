// === Carrito ===
function obtenerCarrito() {
  const carritoJSON = localStorage.getItem('carrito');
  return carritoJSON ? JSON.parse(carritoJSON) : [];
}

function guardarCarrito(carrito) {
  localStorage.setItem('carrito', JSON.stringify(carrito));
}

function agregarAlCarrito(producto) {
  let carrito = obtenerCarrito();
  const index = carrito.findIndex(item => item.id_producto === producto.id_producto);
  if (index !== -1) {
    carrito[index].cantidad += producto.cantidad;
  } else {
    carrito.push(producto);
  }
  guardarCarrito(carrito);
}

function calcularTotal() {
  const carrito = obtenerCarrito();
  return carrito.reduce((total, item) => total + item.precio * item.cantidad, 0);
}

function actualizarCarritoDOM() {
  const carrito = obtenerCarrito();
  const listaCarrito = document.querySelector('.cart-items-list');
  const totalSpan = document.querySelector('.cart-total span:last-child');

  if (!listaCarrito || !totalSpan) return; // por si no existe aún en el DOM

  listaCarrito.innerHTML = '';

  carrito.forEach(item => {
    const li = document.createElement('li');
    li.className = 'cart-item';
    li.innerHTML = `
      <span>${item.nombre} x${item.cantidad}</span>
      <span>€${(item.precio * item.cantidad).toFixed(2)}</span>
    `;
    listaCarrito.appendChild(li);
  });

  totalSpan.innerText = `€${calcularTotal().toFixed(2)}`;
}

// === Función para extraer el ID del producto desde la URL
function getIdFromUrl() {
  const params = new URLSearchParams(window.location.search);
  return params.get('id');
}

function cerrarPopupIngredientes() {
  const panel = document.getElementById('ingredient-choice-panel');
  const popup = panel.closest('.details-card-container'); // o el contenedor adecuado
  if (popup) popup.classList.add('hidden');
}


// === Al cargar la página
document.addEventListener('DOMContentLoaded', () => {
  actualizarCarritoDOM();

  const btnNormal = document.getElementById('btn-normal');

  if (btnNormal) {
    btnNormal.addEventListener('click', () => {
      const nombre = document.querySelector('.details-name-product').innerText.trim();
      const precioText = document.querySelector('.details-price').innerText.trim();
      const precio = parseFloat(precioText.replace(/[^\d.,]/g, '').replace(',', '.')) || 0;
      const id = getIdFromUrl();

      if (!nombre || !precio || !id) {
        console.error('No se pudo obtener nombre, precio o ID del producto');
        return;
      }

      const producto = {
        id_producto: Number(id),
        nombre,
        precio,
        cantidad: 1
      };

      agregarAlCarrito(producto);
      actualizarCarritoDOM();
      document.getElementById('ingredient-choice-panel')?.classList.add('hidden');
    });
  }
});
