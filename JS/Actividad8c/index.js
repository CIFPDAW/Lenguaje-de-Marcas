var x = 0;
var y = 0;
var backgroundColor = "red";

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
  } else {
    var boton = document.querySelector("#boton");
    boton.innerHTML = "Crear tabla";
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
  const tabla = document.querySelector("#table");
  if (!tabla) return;

  const filas = tabla.rows;
  const numFilas = filas.length;
  if (numFilas === 0) return;

  const numCols = filas[0].cells.length;

  if (x === 0 && y === 0) {
    x = Math.floor(numCols / 2);
    y = Math.floor(numFilas / 2);
  }

  x = Math.max(0, Math.min(x, numCols - 1));
  y = Math.max(0, Math.min(y, numFilas - 1));

  const celda = filas[y].cells[x];

  const circulo = document.createElement("div");
  circulo.className = "circulo";
  circulo.style.backgroundColor = backgroundColor;

  celda.appendChild(circulo);
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
  x = 0;
  y = 0;
  posicion();
}
