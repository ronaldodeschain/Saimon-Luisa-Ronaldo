programa {
  funcao inicio() {    
    inteiro parte1,parte2,parte3,parte4,n1=0

    para (inteiro i=0;i <=3;i++){
      escreva("digite a parte 1\n")
      leia(n1)
      se(n1 > 0){
        parte1 = n1
        i++
      }
      senao{
        escreva("valor invalido\n")
        pare
      }
      n1 = 0
      escreva("digite a parte 2\n")
      leia(n1)
      se(n1 > 0){
        parte2 = n1
        i++
      }
      senao{
        escreva("valor invalido\n")
        pare
      }
      n1 = 0
      escreva("digite a parte 3\n")
      leia(n1)
      se(n1 > 0){
        parte3 = n1
        i++
      }
      senao{
        escreva("valor invalido\n")
        pare
      }
      n1 = 0
      escreva("digite a parte 4\n")
      leia(n1)
      se(n1 > 0){
        parte4 = n1
        i++
      }
      senao{
        escreva("valor invalido\n")
        pare
      }
    }
    limpa()
    escreva(parte1,".",parte2,".",parte3,"-",parte4)    
    
  }
}
