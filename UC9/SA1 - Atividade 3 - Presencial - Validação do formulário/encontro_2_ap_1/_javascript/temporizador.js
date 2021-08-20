setInterval(contartempo, 1000);

var contador=1;
function contartempo(){ 
	document.getElementById("tempo").innerHTML = 'Tempo no site: ' + contador + ' segundo(s)';
	contador++;
}
    

    