var botao = document.getElementById("botao");
botao.addEventListener("click",calcularViagem);

function calcularViagem() {
    var qtdpassageiros = document.getElementById("qtdpassageiros").value;
    var valorviagem = document.getElementById("valorviagem").value;
    var total = qtdpassageiros * valorviagem;

    let speech = new SpeechSynthesisUtterance();
    
   var mensagem = "Valor da viagem: R$ " + total + ",00";
   speech.text = mensagem;
   document.getElementById("total").innerHTML = mensagem; 
   window.speechSynthesis.speak(speech);

}