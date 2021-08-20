//Validação com REGEX
function validar_texto() {
  let value = document.getElementById("texto").value;
  let re = /^[a-zA-ZéúíóáÉÚÍÓÁèùìòàçÇÈÙÌÒÀõãñÕÃÑêûîôâÊÛÎÔÂëÿüïöäËYÜÏÖÄ\-\ \s]+$/;
  if (!re.test(value)) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('Somente caracteres alfabéticos Inválido');
    document.form.texto.focus();
    return false;
  }
  return true;
}
//Validação com JQUERY
function validar_numero() {
  let value = document.getElementById("numero").value;
  if (value == "" || value == null) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('Conteúdo numérico não informado');
    document.form.numero.focus();
    return false;
  }
  return true;
}
//Validação com JQUERY
function validar_cpf() {
  let value = document.getElementById("cpf").value;
  if (value == "" || value == null) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('CPF não informado');
    document.form.cpf.focus();
    return false;
  }
  return true;
}
//Validação com JSON
//Confere se CPF digitado é igual ao válido do JSON
function confere_cpf()
{
  let cpf_json = '{"cpf1": "123.456.788-90"}';
  let v_cpf = JSON.parse(cpf_json);
  if(v_cpf.cpf1 == document.form.cpf.value)
    return true;
  else
    {
    alert("CPF não confere com JSON!");
    document.form.cpf.focus();
    return false;
    }
}
//Validação com JQUERY
function validar_imovel() {
  let value = document.getElementById("imov").value;
  if (value == "" || value == null || value == "0,00") {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('Valor Imóvel não informado');
    document.form.imov.focus();
    return false;
  }
  return true;
}

  //valida todos os campos
  function validar_tudo() {
    // se um deles for inválido, retorna false e o form não é submetido
    return validar_texto() && validar_numero() && validar_imovel()
    && validar_cpf() && confere_cpf();
  }
