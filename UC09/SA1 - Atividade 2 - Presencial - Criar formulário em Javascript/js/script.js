var botao = document.getElementById('btnvalidargerar');
botao.addEventListener('click',clickBotao);

function clickBotao() {

    if (validarForm()) {
        gerarJSON();
    }

}

function validarForm() {
    var elements = document.getElementById("formulario").elements;
    var retorno = true;
    var sportchecados = 0;

    for (var i = 0, element; element = elements[i++];) {

            if (element.id == "name") {
                if ((element.value.length < 10) ||
                   (element.value.length > 80)) {
                    alert('Nome do usuário em um campo de texto com no mínimo 10 e no máximo 80 caracteres.');
                    retorno = false;
                }
            }
            
            if (element.id == "nickname") {
                if ((element.value.length < 2) ||
                   (element.value.length > 20)) {
                    alert('Apelido do usuário em um campo de texto com no mínimo 2 e no máximo 20 caracteres.');
                    retorno = false;
                }
            }
            
            if (element.id == "day") {
                var dia = parseInt(element.value);
                if (    (dia < 1) || (dia > 31) || (isNaN(dia))  ) {
                    alert('Dia de nascimento em um campo de texto de até 2 caracteres. Conteúdo válido deve ser número entre 1 e 31.');
                    retorno = false;
                }
            }
                        
            if (element.id == "month") {
                var mes = parseInt(element.value);
                if (    (mes < 1) || (mes > 12) || (isNaN(mes))  ) {
                    alert('Mês de nascimento em um campo de até 2 caracteres. Conteúdo válido deve ser número entre 1 e 12.');
                    retorno = false;
                }
            }

            //Verificação do ano
            if (element.id == "year") {
                var ano = parseInt(element.value);
                var anoatual = new Date().getFullYear();
                if (    (ano < 1900) || (ano > anoatual) || (isNaN(ano))  ) {
                    alert('Ano de nascimento em um campo de até 4 caracteres. Conteúdo válido deve ser número entre 1900 e o ano atual.');
                    retorno = false;
                }
            }

             //Verificação do CPF
             if (element.id == "cpf") {
                var expressao = /[0-9][0-9][0-9]\.[0-9][0-9][0-9]\.[0-9][0-9][0-9]\-[0-9][0-9]/;
                var cpf = element.value;
                if (  ! expressao.test(cpf)  ) {
                    alert('CPF do usuário em um campo de 14 caracteres. Conteúdo deve estar no formato NNN.NNN.NNN-NN, onde N é um dígito (entre 0 e 9).');
                    retorno = false;
                }
            }

            if (element.name == "sport") { 
                if (element.checked) {
                    sportchecados = sportchecados + 1; 
                }
            }                   
            
    }
    
    if (sportchecados <= 0) {
        alert('Conjunto de opções (checkboxes) com nomes de esportes de interesse. Deve ser escolhido ao menos um esporte.');
    }

    return retorno;
}

function gerarJSON() {
    var elements = document.getElementById("formulario").elements;
    var json = '{';
    var sport = '"sports": [';
    var nsport = 1;

    json = '{\n'
    for (var i = 0, element; element = elements[i++];) {
        if (element.name == "sport") {
            if (element.checked)
                sport = sport + nsport + ','; 
            nsport++;
        } else 
        json = json + '"' + element.id + '":"' + element.value + '",\n';
    }
    sport = sport.substr(0,sport.length-1) + ']';
    json = json + sport;
    json = json + '\n}';

    alert("Json gerado com sucesso: \n" + json);
}