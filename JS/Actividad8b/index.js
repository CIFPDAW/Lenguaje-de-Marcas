var x = 0;
var y = 0;

function tabla() {
  var div = document.querySelector("#divTabla");
  var num = document.querySelector("#num");
  if (div) {
    div.remove();
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
  crearBotones();
  posicion();
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
      boton.innerHTML = "↑";
      break;
    case 2:
      boton.innerHTML = "←";
      break;
    case 3:
      boton.innerHTML = "•";
      break;
    case 4:
      boton.innerHTML = "→";
      break;
    case 5:
      boton.innerHTML = "↓";
      break;
  }

  boton.id = "boton" + num;
  celdaElem.appendChild(boton);
}
