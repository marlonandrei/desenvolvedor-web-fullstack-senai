//Validação com REGEX
function validar_cpf() {
  let value = document.getElementById("cpf").value;
  let re = /^(([0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2})|([0-9]{11}))$/;
  if (!re.test(value)) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('Conteúdo de CPF Inválido');
    document.form.cpf.focus();
    return false;
  }
  return true;
}
//Validação com JSON
//Confere se CPF digitado é igual ao válido do JSON
function confere_cpf()
{
  let cpf_json = '{"cpf1": "123.456.788-90","cpf2":"12345678890"}';
  let v_cpf = JSON.parse(cpf_json);
  if(v_cpf.cpf1 == document.form.cpf.value || v_cpf.cpf2 == document.form.cpf.value)
    return true;
  else
    {
    alert("CPF não confere com JSON!");
    document.form.cpf.focus();
    return false;
    }
}

function confere_login() {

  let login_json = '{"usuario": "Usuario","senha":"Abc$123"}';
  let v_login = JSON.parse(login_json);
  
  if (v_login.usuario != document.form.login.value) {
    alert("LOGIN não confere com JSON!");
    document.form.login.focus();
    return false;
  }

  if (v_login.senha != document.form.senha.value) {
    alert("SENHA não confere com JSON!");
    document.form.login.focus();
    return false;
  }

  return true;
}

  //valida todos os campos
  function validar_tudo() {
    var btn = document.getElementById('butassin');
    // se um deles for inválido, retorna false e o form não é submetido
    var retorno = validar_cpf() && confere_cpf() && confere_login();
    if (retorno)
      btn.disabled = false;

    return false;
  }
  