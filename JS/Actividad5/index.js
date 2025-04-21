// Funcionalidad para la lista de recordatorios
function actualizarh1() {
    var h1 = document.querySelector("h1");
    var listas = document.querySelector("ol");
  
    if (!h1) {
      h1 = document.createElement("h1");
      h1.innerHTML = "Lista de Recordatorios";
  
      listas.before(h1);
    } else if (listas.childElementCount == 0) {
      h1.remove();
    }
  }
  
  function agregarElementoP() {
    var texto = document.querySelector("#nuevo-elemento").value;
    //   alert(texto);
    var listas = document.querySelector("ol");
    if (texto != "") {
      var li = document.createElement("li");
      li.innerHTML = texto;
      li.addEventListener("dblclick", eliminar);
      listas.prepend(li);
      actualizarh1();
      // alert("Elemento agregado a la lista");
    }
  }
  
  function agregarElementoF() {
    var texto = document.querySelector("#nuevo-elemento").value;
    //   alert(texto);
    var listas = document.querySelector("ol");
    if (texto != "") {
      var li = document.createElement("li");
      li.innerHTML = texto;
      li.addEventListener("dblclick", eliminar);
      listas.append(li);
      actualizarh1();
      // alert("Elemento agregado a la lista");
    }
  }
  
  function eliminarElementoP() {
    var listas = document.querySelector("ol");
    var li = listas.querySelector("li:first-child");
    if (li) {
      li.remove();
      actualizarh1();
    }
  }
  
  function eliminaElementoF() {
    var listas = document.querySelector("ol");
    var li = listas.querySelector("li:last-child");
    if (li) {
      li.remove();
      actualizarh1();
    }
  }
  
  function eliminarTodo() {
    const lista = document.querySelector("ol");
    lista.innerHTML = "";
    actualizarh1();
  }