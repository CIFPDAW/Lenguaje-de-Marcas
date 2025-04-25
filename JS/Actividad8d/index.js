var x = 0;
var y = 0;
var backgroundColor = "#ff0000";
var tamaño = 100;

function tabla() {
  var div = document.querySelector("#divTabla");
  var num = document.querySelector("#num");
  if (div) {
    div.remove();
    x = 0;
    y = 0;
  } else {
    var div = document.createElement("div");
    div.id = "divTabla";
    var tabla = document.createElement("table");
    tabla.id = "table";
    for (var i = 1; i <= num.value; i++) {
      var fila = document.createElement("tr");
      fila.className = "fila";
      for (var j = 1; j <= num.value; j++) {
        var celda = document.createElement("td");
        celda.className = "celda";
        fila.appendChild(celda);
      }
      tabla.appendChild(fila);
    }
    var form = document.querySelector("form");
    form.after(div);
    div.appendChild(tabla);

    centro();
  }
  cambiarBoton();
  posicion();
  crearBotones();
}

function cambiarBoton() {
  var table = document.querySelector("#table");
  if (table) {
    var boton = document.querySelector("#boton");
    boton.innerHTML = "Eliminar tabla";

    var botonColor = document.createElement("input");
    botonColor.type = "color";
    botonColor.id = "colorPicker";
    botonColor.defaultValue = backgroundColor;
    botonColor.addEventListener("input", function () {
      backgroundColor = botonColor.value;
      console.log("Color", backgroundColor);
      posicion();
    });

    var botonTamaño = document.createElement("input");
    botonTamaño.type = "range";
    botonTamaño.id = "tamañoPicker";
    botonTamaño.value = tamaño;
    botonTamaño.min = 0;
    botonTamaño.max = 100;
    botonTamaño.addEventListener("input", function () {
      var circulo = document.querySelector(".circulo");
      if (circulo) {
        circulo.style.width = botonTamaño.value + "%";
        circulo.style.height = botonTamaño.value + "%";
        tamaño = botonTamaño.value;
        console.log("Tamaño", tamaño + "%");
      }
    });

    boton.after(botonTamaño);
    boton.after(botonColor);
  } else {
    var boton = document.querySelector("#boton");
    boton.innerHTML = "Crear tabla";
    var botonColor = document.querySelector("#colorPicker");
    if (botonColor) {
      botonColor.remove();
    }
    var botonTamaño = document.querySelector("#tamañoPicker");
    if (botonTamaño) {
      botonTamaño.remove();
    }
  }
}

function crearBotones() {
  var table = document.querySelector("#table");
  var botonesTable = document.createElement("table");
  botonesTable.id = "botonesTable";
  if (table) {
    for (var i = 1; i <= 3; i++) {
      var fila = document.createElement("tr");
      fila.className = "fila" + i;
      botonesTable.appendChild(fila);
      for (var j = 1; j <= 3; j++) {
        var celda = document.createElement("td");
        celda.id = "celda" + j + i;
        fila.appendChild(celda);

        if (j === 2 && i === 1) botonType(1, celda);
        else if (j === 1 && i === 2) botonType(2, celda);
        else if (j === 2 && i === 2) botonType(3, celda);
        else if (j === 3 && i === 2) botonType(4, celda);
        else if (j === 2 && i === 3) botonType(5, celda);
      }
      table.after(botonesTable);
    }
  }
}

function botonType(num, celdaElem) {
  var boton = document.createElement("button");
  switch (num) {
    case 1:
      boton.innerHTML = "^";
      boton.onclick = arriba;
      break;
    case 2:
      boton.innerHTML = "<";
      boton.onclick = izquierda;
      break;
    case 3:
      boton.innerHTML = "·";
      boton.onclick = centro;
      break;
    case 4:
      boton.innerHTML = ">";
      boton.onclick = derecha;
      break;
    case 5:
      boton.innerHTML = "v";
      boton.onclick = abajo;
      break;
  }

  boton.id = "boton" + num;
  celdaElem.appendChild(boton);
}

function limpiar() {
  const tabla = document.querySelector("#table");
  if (!tabla) return;

  var ciruclo = document.querySelector(".circulo");
  if (ciruclo) {
    ciruclo.remove();
  }
}

function posicion() {
  limpiar();
  console.log("Posición inicial", x, y);
  const tabla = document.querySelector("#table");
  if (!tabla) return;

  const filas = tabla.rows;
  const numFilas = filas.length;
  if (numFilas === 0) return;

  const numCols = filas[0].cells.length;

  if (x < 0) x = 0;
  if (x >= numCols) x = numCols - 1;
  if (y < 0) y = 0;
  if (y >= numFilas) y = numFilas - 1;

  const celda = filas[y].cells[x];
  // console.log("Posición Celda", celda);

  const circulo = document.createElement("div");
  circulo.className = "circulo";
  circulo.style.backgroundColor = backgroundColor;
  console.log("Color", backgroundColor);
  circulo.style.width = tamaño + "%";
  circulo.style.height = tamaño + "%";
  console.log("Tamaño", tamaño + "%");

  celda.appendChild(circulo);
  console.log("Posición Final", x, y);
}

function arriba() {
  y--;
  posicion();
}

function izquierda() {
  x--;
  posicion();
}

function derecha() {
  x++;
  posicion();
}

function abajo() {
  y++;
  posicion();
}

function centro() {
  const tabla = document.querySelector("#table");
  if (!tabla) return;
  const filas = tabla.rows;
  const numFilas = filas.length;
  const numCols = filas[0].cells.length;
  x = Math.floor(numCols / 2);
  y = Math.floor(numFilas / 2);
  posicion();
}
