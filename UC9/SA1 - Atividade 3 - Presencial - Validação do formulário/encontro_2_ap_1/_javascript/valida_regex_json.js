
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

function confere_usuario()
{
  let usuario_json = '{"usuario": "Usuario"}';
  let v_usuario = JSON.parse(usuario_json);
  if(v_usuario.usuario == document.form.login.value)
    return true;
  else
    {
    alert("Usuáro não confere com JSON!");
    document.form.login.focus();
    return false;
    }
}

function confere_senha()
{
  let senha_json = '{"senha": "Abc$123"}';
  let v_senha = JSON.parse(senha_json);
  if(v_senha.senha == document.form.senha.value)
    return true;
  else
    {
    alert("Senha não confere com JSON!");
    document.form.senha.focus();
    return false;
    }
}

  //valida todos os campos
  function validar_tudo() {
    let butassin = document.getElementById("butassin");
    var validado = validar_cpf() && confere_cpf() && confere_usuario() && confere_senha();
    // se um deles for inválido, retorna false e o form não é submetido
    
    if (validado) 
      butassin.disabled = false;
    
    return false;
  }
  