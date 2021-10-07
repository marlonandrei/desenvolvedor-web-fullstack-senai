
//A soma deve ser maior que 10 e menor que 20
function Somar(v1,v2) {
    return v1*v2;
}


function alertaSoma() {
    var v1 = parseInt(document.getElementById("valor1").value);
    var v2 = parseInt(document.getElementById("valor2").value);

    var soma = 0;
    soma = Somar(v1,v2);
    alert(soma);
}