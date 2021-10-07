$(function() {
    $(".cpf_mask").mask('999.999.999-99');
    $(".telefone_mask").mask('(99)9999-9999');
    $(".celular_mask").mask('(99)99999-9999');
    $(".cep_mask").mask('99999-999');
});


function pesquisaCep(cep) {
    cep = cep.replace("-","");

    var resposta = new XMLHttpRequest();
    var url = 'https://viacep.com.br/ws/' + cep + '/json/';

    resposta.open('GET',url);

    resposta.onreadystatechange = () => {

        if (resposta.readyState == 4) {
            if (resposta.status == 200) {
                preencherEndereco(JSON.parse(resposta.responseText));
            } else {
                preencherEndereco({"erro":true});
            }
        }

    }
    resposta.send();

}


function preencherEndereco(conteudo) {
    document.getElementById("endereco").value = "";
    document.getElementById("bairro").value = "";
    document.getElementById("cidade").value = "";
    document.getElementById("estado").value = "";

    if (!("erro" in conteudo)) {
        document.getElementById("endereco").value = conteudo.logradouro;
        document.getElementById("bairro").value = conteudo.bairro;
        document.getElementById("cidade").value = conteudo.localidade;
        document.getElementById("estado").value = conteudo.uf;    
    }

}

function Cadastrar() {
    var nome = document.getElementById("nome").value;
    var cpf = document.getElementById("cpf").value;
    var telefone = document.getElementById("telefone").value; 
    var celular = document.getElementById("celular").value; 
    var cep = document.getElementById("cep").value; 
    var endereco = document.getElementById("endereco").value; 
    var numero = document.getElementById("numero").value; 
    var complemento = document.getElementById("complemento").value; 
    var bairro =document.getElementById("bairro").value; 
    var cidade = document.getElementById("cidade").value; 
    var estado = document.getElementById("estado").value;

    var dados = {
        nome,
        cpf,
        telefone, 
        celular, 
        cep, 
        endereco, 
        numero, 
        complemento, 
        bairro, 
        cidade, 
        estado
    };

    var retorno = "Retorno:\n";
    retorno = retorno + JSON.stringify(dados,null,"\n");
    alert(retorno);

    return false;
}