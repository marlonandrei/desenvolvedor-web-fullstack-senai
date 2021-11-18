
public class ContaCorrente {
	private int numero_doc_cc;
	private int agencia_cc;
	private int conta_cc;
	private float valor_cc;
	private int tipo_cc;
	private String data_ocorrencia_cc;
	private double saldo_cc;
	
	public int getNumero_doc_cc() {
		return numero_doc_cc;
	}
	public void setNumero_doc_cc(int numero_doc_cc) {
		this.numero_doc_cc = numero_doc_cc;
	}
	public int getAgencia_cc() {
		return agencia_cc;
	}
	public void setAgencia_cc(int agencia_cc) {
		this.agencia_cc = agencia_cc;
	}
	public int getConta_cc() {
		return conta_cc;
	}
	public void setConta_cc(int conta_cc) {
		this.conta_cc = conta_cc;
	}
	public float getValor_cc() {
		return valor_cc;
	}
	public void setValor_cc(float valor_cc) {
		this.valor_cc = valor_cc;
	}
	public int getTipo_cc() {
		return tipo_cc;
	}
	public void setTipo_cc(int tipo_cc) {
		this.tipo_cc = tipo_cc;
	}
	public String getData_ocorrencia_cc() {
		return data_ocorrencia_cc;
	}
	public void setData_ocorrencia_cc(String data_ocorrencia_cc) {
		this.data_ocorrencia_cc = data_ocorrencia_cc;
	}
	public double getSaldo_cc() {
		return saldo_cc;
	}
	public void setSaldo_cc(double saldo_cc) {
		this.saldo_cc = saldo_cc;
	}
	
	public void AtualizarSaldo(double saldo) {
		this.saldo_cc = saldo;
	}
	
	public void RegistrarOcorrencia(int numero,int tipo, String data, double valor) {
		System.out.println("--- CONTA CORRENTE ---");
		if (tipo ==1) {
			
			this.numero_doc_cc = numero;
			System.out.println("Número do Documento: " + numero);
			System.out.println("Agência: " + this.agencia_cc);
			System.out.println("Conta: " + this.conta_cc);
			System.out.println("Valor: " + valor);
			System.out.println("Tipo: 1 (Depósito)");
			System.out.println("Data Ocorrência: " + data);
			System.out.println("Saldo Anterior: " + this.saldo_cc);
			
			this.AtualizarSaldo(this.saldo_cc + valor);
			
			System.out.println("Saldo Atualizado: " + this.saldo_cc);
			System.out.println("Mensagem: Ocorrência registrada");
		}		
	}
	
}
