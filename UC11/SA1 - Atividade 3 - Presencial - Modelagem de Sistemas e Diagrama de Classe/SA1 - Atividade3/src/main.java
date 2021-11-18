
public class main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Cliente cliente;
		ContaCorrente conta;
		
		cliente = new Cliente();
		cliente.setAgencia(100);
		cliente.setConta(34567);
		cliente.setCpf("123.456.788-90");
		cliente.setNome("José da Silva");
		cliente.setNascimento("15/06/1995");
		cliente.setEndereco("Av. dos Autonomistas 234");
		cliente.setTelefone("(11)9123-456");
		cliente.setSaldo(100.0);
		cliente.setSenha("abc#1234");
		
		cliente.MostrarCliente();
		
		conta = new ContaCorrente();
		conta.setAgencia_cc(100);
		conta.setConta_cc(34567);
		conta.AtualizarSaldo(100.0);
				
		conta.RegistrarOcorrencia(23456789,1,"20/10/2021",50.0);
		
		
	}

}
