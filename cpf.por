programa {
  inclua biblioteca Util
  inclua biblioteca Texto
  inclua biblioteca Tipos
  funcao inicio() {
    inteiro parte1,parte2,parte3,parte4,n1

    escreva("digite a primeira parte do cpf: ")
    leia(n1)
    se(Tipos.inteiro_para_logico(n1)){
      parte1 = n1
    }
   
    escreva("digite a segunda parte do cpf: ")
    leia(n1)
    se(Tipos.inteiro_para_logico(n1)){
      parte2 = n1
    }
    escreva("digite a terceira parte do cpf: ")
    leia(n1)
    se(Tipos.inteiro_para_logico(n1)){
      parte3 = n1
    }
    escreva("digite os digitos verificadores do cpf: ")
    leia(n1)
    se(Tipos.inteiro_para_logico(n1)){
      parte4 = n1
    }
    escreva("O cpf que voce enviou é: ",parte1,".",parte2,".",parte3,"-",parte4)
    }
    
  }
