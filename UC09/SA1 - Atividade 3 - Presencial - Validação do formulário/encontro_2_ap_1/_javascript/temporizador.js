setInterval(contarTempo,1000);

var segundos = 0;
function contarTempo() {
    var msg = 'Tempo na página: ' + segundos + ' segundo(s)';
    document.getElementById('temporizador').innerHTML = msg;
    segundos++;
}