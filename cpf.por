programa {
  inclua biblioteca Tipos
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
        escreva("voce digitou: ",cpf,"\n") 
        se(Texto.numero_caracteres(cpf)== 14){
            para(inteiro i =0;i<14;i++){
                      se(Tipos.cadeia_e_inteiro(Texto.obter_caracter(cpf,i),10) ou Texto.obter_caracter(cpf,i) == "."ou Texto.obter_caracter(cpf,i) == "-"){
                        valido = verdadeiro
                      }senao{
                        escreva("cpf invalido! \n")
                        valido = falso
                        pare
                      }
            }        
        }        
        }senao se(Texto.numero_caracteres(cpf) == 11){
          para(inteiro i =0;i<11;i++){
              se(Tipos.cadeia_e_inteiro(Texto.obter_caracter(cpf,i),10) ou Texto.obter_caracter(cpf,i) == "."ou Texto.obter_caracter(cpf,i) == "-"){
                valido = verdadeiro
                }senao{
                escreva("cpf invalido! \n")
                valido = falso
                pare
                }
            }            
        }
        }
    limpa()
    escreva("Seu cpf eh: ",cpf)
  }
}
