var playervideo = document.getElementById("playervideo");
var nivelvolume = 0;

var btnPlay = document.getElementById("btnPlay");
btnPlay.addEventListener('click',Play);

function Play() {
    playervideo.play();
}


var btnPause = document.getElementById("btnPause");
btnPause.addEventListener('click',Pause);

function Pause() {
    playervideo.pause();
}


var btnAmpliar = document.getElementById("btnAmpliar");
btnAmpliar.addEventListener('click',Ampliar);

function Ampliar() {
    playervideo.width = playervideo.width + 20; 
    playervideo.height = playervideo.height + 10; 
}


var btnReduzir = document.getElementById("btnReduzir");
btnReduzir.addEventListener('click',Reduzir);

function Reduzir() {
    playervideo.width = playervideo.width - 20; 
    playervideo.height = playervideo.height - 10; 
}


var btnTamanhoNormal = document.getElementById("btnTamanhoNormal");
btnTamanhoNormal.addEventListener('click',TamanhoNormal);

function TamanhoNormal() {
    playervideo.width = 500; 
    playervideo.height = 300; 
}


var btnTelaInteira = document.getElementById("btnTelaInteira");
btnTelaInteira.addEventListener('click',TelaInteira);

function TelaInteira() {
    playervideo.requestFullscreen();
}


var btnVolumeMais = document.getElementById("btnVolumeMais");
btnVolumeMais.addEventListener('click',VolumeMais);

function VolumeMais() {
    if (playervideo.volume < 1) 
        playervideo.volume = playervideo.volume + 0.1 ;
}



var btnVolumeMenos = document.getElementById("btnVolumeMenos");
btnVolumeMenos.addEventListener('click',VolumeMenos);

function VolumeMenos() {
    if (playervideo.volume > 0) 
        playervideo.volume = playervideo.volume - 0.1 ;
}



var btnMudo = document.getElementById("btnMudo");
btnMudo.addEventListener('click',Mudo);

function Mudo() {
    if (playervideo.volume == 0) {
        playervideo.volume = nivelvolume;
    } else {
        nivelvolume = playervideo.volume;
        playervideo.volume = 0;
    }

}