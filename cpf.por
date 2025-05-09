programa {
  inclua biblioteca Texto
  funcao inicio() {
    // Leia um CPF completo do usuário (XXX.XXX.XXX-YY).
    cadeia cpf, parte1 ="",parte2=""
    escreva("digite seu cpf: ")
    leia(cpf)
    // escreva("primeira parte do seu cpf é: \n")
    para(inteiro i = 0;i < 11; i++){
      // escreva(Texto.obter_caracter(cpf,i))
      parte1 += Texto.obter_caracter(cpf,i)
    }
    escreva("Seus digitos verificadores são: ")
    para(inteiro i = 12;i<=13;i++){
      parte2 += Texto.obter_caracter(cpf,i)
    }
    escreva("primeira parte do cpf: ",parte1)
    escreva("\ndigitos verificadores: ",parte2)
    
  }
}
