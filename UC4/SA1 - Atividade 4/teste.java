import java.util.Scanner;
class Main {  
  public static void main(String args[]) { 
    Scanner input = new Scanner(System.in);
    
    int idade;
    
    System.out.println("Olá, mundo...!"); 
    
    System.out.print("Idade: ");
    idade = input.nextInt();

    input.close();
  }
}