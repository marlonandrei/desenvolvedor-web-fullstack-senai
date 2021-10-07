var btnsim = document.getElementById("btnsim");
var btnnao = document.getElementById("btnnao");

btnsim.addEventListener('click',fbtnsim);
btnnao.addEventListener('click',fbtnnao);

function fbtnsim() {
    window.location.href = "formulario.html";
}

function fbtnnao() {
    alert("Você não tem idade para acessar o canal!");
}