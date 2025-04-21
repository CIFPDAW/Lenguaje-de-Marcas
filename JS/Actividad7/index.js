var images = [
  "./img/img1.png",
  "./img/img2.png",
  "./img/img3.png",
  "./img/img4.png",
  "./img/img1.png",
  "./img/img2.png",
  "./img/img4.png",
  "./img/img1.png",
  "./img/img2.png",
  "./img/img1.png",
];
var contador = 0;

// Función para mostrar la imagen seleccionada
function mostrarImagen(id) {
  var img = document.querySelector("#imagen-principal");
  img.src = images[id];
}

// Crear radios dinámicamente y asociar eventos
function radios() {
  var radiosContainer = document.querySelector("#radios-container");
  for (let i = 0; i < images.length; i++) {
    let radio = document.createElement("input");
    radio.type = "radio";
    radio.name = "selector-imagen";
    radio.value = i;
    if (i === 0) radio.checked = true;
    radio.onclick = function () {
      mostrarImagen(i);
    };
    radiosContainer.appendChild(radio);
  }
  mostrarImagen(0);
};

document.addEventListener("DOMContentLoaded", radios);