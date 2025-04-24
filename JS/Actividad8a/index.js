function tabla() {
  var num = document.querySelector("#num");
  var tabla = document.querySelector("#table");
  if (tabla) {
    tabla.remove();
  } else {
    var tabla = document.createElement("table");
    tabla.id = "table";
    for (var i = 1; i <= num.value; i++) {
      var fila = document.createElement("tr");
      for (var j = 1; j <= num.value; j++) {
        var celda = document.createElement("td");
        fila.appendChild(celda);
      }
      tabla.appendChild(fila);
    }
    var form = document.querySelector("form");
    form.after(tabla);
  }
  cambiarBoton();
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