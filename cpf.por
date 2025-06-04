programa {
  inclua biblioteca Tipos
  inclua biblioteca Texto
  //função criada para validar a entrada da cadeia do cpf
  funcao logico  valida_formato(cadeia cpf){
      
      //se cadeia tiver 14
      se(Texto.numero_caracteres(cpf) == 14){
        se(Texto.numero_caracteres(cpf)== 14){
          para(inteiro i =0;i<14;i++){
            se(Tipos.cadeia_e_inteiro(Texto.obter_caracter(cpf,i),10) ou Texto.obter_caracter(cpf,i) == "." ou Texto.obter_caracter(cpf,i) == "-"){
              
              retorne verdadeiro
            }senao{                  
              retorne falso         
            }            
          }   
        }    
        //se cadeia tiver 11 
        }senao se(Texto.numero_caracteres(cpf) == 11){
          para(inteiro i = 0; i < 11; i++){
            se(Tipos.cadeia_e_inteiro(Texto.obter_caracter(cpf, i), 10)){
              
              retorne verdadeiro
            }senao{              
              retorne falso             
            }
          }           
        }      
  }
  funcao inicio() {
    // Leia um CPF completo do usuário.
    // Valide para que o CPF esteja nos formatos XXX.XXX.XXX-YY ou XXXXXXXXXYY.

    cadeia cpf     
    inteiro novo_cpf[14]
    inteiro soma=0,contador_1=0,contador_2 = 0,resultado_1=0,resultado_2=0,j=0
    //entrada de dados
    escreva("digite um cpf para validar: \n")
    leia(cpf)
    //chamada de função para validar o cpf
    valida_formato(cpf)    
    //aqui se ajeita o formato do cpf 
    //deixando ele apenas em numeros filtrando os acentos enviados
    limpa()
    se(valida_formato(cpf)){
      escreva("O cpf enviado foi: ",cpf,"\n")
      se(Texto.numero_caracteres(cpf) == 14){
          para(inteiro i = 0; i < 14 ; i++){
            se(Tipos.cadeia_e_inteiro(Texto.obter_caracter(cpf,i),10)){           
              novo_cpf[j] = Tipos.cadeia_para_inteiro(Texto.obter_caracter(cpf,i),10)
              j++
            }

          }
    //caso não precise fazer o filtro apenas escreve ele para o vetor
      }senao{
        para(inteiro i = 0;i<11;i++){
          novo_cpf[i] = Tipos.cadeia_para_inteiro(Texto.obter_caracter(cpf,i),10)
        }        
      }
    //validando se o primeiro digito está correto
      para(inteiro i = 10;i >= 2;i--){
        soma = soma + (novo_cpf[contador_1]*i)    
        contador_1 += 1
     }
        resultado_1
   = soma*10 %11
        escreva("primeiro digito verificador é: ",resultado_1
  ,"\n")
        escreva("e o que voce enviou foi: ",novo_cpf[9],"\n")
        //escreva(resultado_1 == novo_cpf[9],"\n")
   //resetar a variavel
    soma = 0
    //validando se o segundo digito está correto
    para (inteiro i = 11;i >2;i--){
        soma = soma +(novo_cpf[contador_2]*i)
        contador_2 +=1
    }
      resultado_2 = soma*10 %11
      escreva("segundo digito verificador é: ",resultado_2,"\n")
      escreva("e o que voce enviou foi: ",novo_cpf[10],"\n")
      //escreva(resultado_2 == novo_cpf[10],"\n")
      se(resultado_1 == novo_cpf[9] e resultado_2 == novo_cpf[10]){
        escreva("cpf enviado é válido")
      }senao{
        escreva("cpf enviado não é valido!")
      }
    //aqui a gente finaliza o programa se não entrar no laço de validação do cpf
    }senao{
      escreva("cpf inválido!\n")
    }
    
  }
}
