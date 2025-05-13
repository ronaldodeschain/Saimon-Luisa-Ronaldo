programa {
  inclua biblioteca Texto
  funcao inicio() {
    // Leia um CPF completo do usuário.
    // Valide para que o CPF esteja nos formatos XXX.XXX.XXX-YY ou XXXXXXXXXYY.

    cadeia cpf    
    logico valido = falso
        
    enquanto(valido == falso){
      escreva("Digite um cpf valido: ")
      leia(cpf)   
      se(Texto.numero_caracteres(cpf) == 14){
        escreva("voce digitou: ",cpf," e\n") 
        //aqui valida se os caracteres separadores estão corretos
        se(Texto.obter_caracter(cpf,3) != "." ou Texto.obter_caracter(cpf,7) != "." ou Texto.obter_caracter(cpf,11) != "-"){
          escreva("o formato deve ser XXX.XXX.XXX-YY ou XXXXXXXXXYY\n")        
        }senao{
          //fecha o laço
          valido = verdadeiro
        }           
      }senao se(Texto.numero_caracteres(cpf) == 11){       
        //fecha o laço
        valido = verdadeiro
      }
      senao{
        escreva("cpf invalido!\n")
      }
    }
    limpa()
    escreva("Seu cpf eh: ",cpf)
  }
}
