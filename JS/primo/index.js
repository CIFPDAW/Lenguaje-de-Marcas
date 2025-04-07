var x = prompt("Introduce un número");

if (x > 1) {
  esPrimo = true;
  for (i = 2; i < x; i++) {
    if (x % i == 0) {
      esPrimo = false;
    }
  }
  if (esPrimo) {
    alert("El número es primo.");
  } else {
    alert("El número no es primo.");
  }
} else {
  alert("El número debe ser mayor que 1.");
}
