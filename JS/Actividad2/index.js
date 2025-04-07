var images = ["./img/img1.png", "./img/img2.png", "./img/img3.png", "./img/img4.png"];

var contador = 0;


function izquierda(){
    if(contador == 0){
        contador = images.length - 1;
    }else{
        contador--;
    }

    document.body.children[0].style.backgroundImage = 'url(' + images[contador] + ')'
}

function derecha(){
    if(contador == images.length - 1){
        contador = 0;
    }else{
        contador++;
    }

    document.body.children[0].style.backgroundImage = 'url(' + images[contador] + ')'
}