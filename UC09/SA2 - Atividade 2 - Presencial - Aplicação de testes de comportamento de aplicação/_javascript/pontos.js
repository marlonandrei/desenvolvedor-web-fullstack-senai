function inserir_pontos()
{
    var p_bro=0;
    var p_ipi=0;
    var p_mir=0;
    var p_nac=0;
    var p_ope=0;
    var p_ser=0;
    // jogo 1
    if(document.getElementById('t11').value == document.getElementById('t12').value)
    {
        p_ser = p_ser + 1;
        p_bro = p_bro + 1;
    }
    else
    {
        if(document.getElementById('t11').value > document.getElementById('t12').value)
            p_ser = p_ser + 3;
        else
            p_bro = p_bro + 3;
    }

    // jogo 2
    if(document.getElementById('t21').value == document.getElementById('t22').value)
    {
        p_ipi = p_ipi + 1;
        p_nac = p_nac + 1;
    }
    else
    {
        if(document.getElementById('t21').value > document.getElementById('t22').value)
            p_ipi = p_ipi + 3;
        else
            p_nac = p_nac + 3;
    }


    // jogo 3
    if(document.getElementById('t31').value == document.getElementById('t32').value)
    {
        p_mir = p_mir + 1;
        p_ope = p_ope + 1;
    }
    else
    {
        if(document.getElementById('t31').value > document.getElementById('t32').value)
            p_mir = p_mir + 3;
        else
            p_ope = p_ope + 3;
    }
    // total de pontos
    document.getElementById('tot_bro').value = p_bro;
    document.getElementById('tot_ipi').value = p_ipi;
    document.getElementById('tot_mir').value = p_mir;
    document.getElementById('tot_nac').value = p_nac;
    document.getElementById('tot_ope').value = p_ope;
    document.getElementById('tot_ser').value = p_ser;
    // habilita e desabilita botões
	document.getElementById('pt').disabled=true;


   // Mostrar campeão
	document.getElementById('Jogo1').innerHTML = 
	validar_pontos(document.getElementById('t11').value,
	document.getElementById('t12').value );


	document.getElementById('Jogo2').innerHTML = 
	validar_pontos(document.getElementById('t21').value,
	document.getElementById('t22').value );


	document.getElementById('Jogo3').innerHTML = 
	validar_pontos(document.getElementById('t31').value,
	document.getElementById('t32').value );

}

function posjogo()
{
// Gera resultados dos jogos (pós jogo)
// Gera placares randômicos entre 0 e 4

// jogo 1
	valor_do_jogo('t11');

	valor_do_jogo('t12');

// jogo 2
	valor_do_jogo('t21');

	valor_do_jogo('t22');

// jogo 3
	valor_do_jogo('t31');

	valor_do_jogo('t32');
	
// desabilita botão Pós Jogo
	document.getElementById('pj').disabled=true;
// habilita botão Pontuação
	document.getElementById('pt').disabled=false;
}

var limpar_campeoes = function () {

	document.getElementById('Jogo1').innerHTML=
	document.getElementById('Jogo2').innerHTML=
	document.getElementById('Jogo3').innerHTML=
	"";
}


var valor_do_jogo = function (componenteHTML) {
	
	document.getElementById(componenteHTML).value = sorteio() ;
	
}

//Função que sorteia de 0 à 4 quantos pontos teve 1 Time
// o 5 é porque temos 5 elementos contando com o 0
// Exemplo 0-1-2-3-4

var sorteio = function ()
{
	return Math.floor(Math.random() * 5);
}




var validar_pontos = function (vtime1, vtime2) {

	if(vtime1 > vtime2)
		return "Vitória do Time 1";

	if( vtime1 == vtime2)
		return "Empate";	

	if( vtime1 < vtime2)
		return "Vitória do Time 2";
}




