import java.util.Scanner;

class Main {  
  public static void main(String args[]) { 
    System.out.println("Olá, mundo..."); 
    
    String nome;
    String datanasc;
    int idade;
    String telefone;
    String cpf;
    String rg;
    String endereco;
    String email;
    String sexo;
    double salario, IR;
    String ativo;

    Scanner input = new Scanner(System.in);
    System.out.print("Nome: ");
    nome = input.next();
    System.out.print("Data Nascimento: ");
    datanasc = input.next();
    System.out.print("Idade: ");
    idade = input.nextInt();
    System.out.print("Telefone: ");
    telefone = input.next();
    System.out.print("CPF: ");
    cpf = input.next();
    System.out.print("RG: ");
    rg = input.next();
    System.out.print("Endereço: ");
    endereco = input.next();
    System.out.print("E-mail: ");
    email = input.next();
    System.out.print("Sexo: ");
    sexo = input.next();
    System.out.print("Salário: ");
    salario = input.nextDouble();
    System.out.print("Ativo: ");
    ativo = input.next();

    IR = salario * 0.15;
    
    System.out.println(""); 
    
    System.out.printf("Olá %s, o valor do seu Imposto de Renda será: %s", nome, IR); 
    input.close();
  } 
}