import sys
import os

def validando_formato(cpf,tamanho):
    '''
    Função responsavel por receber o cpf e verificar se está no formato que foi
    solicitado e tratando ele para as proximas etapas

    atributos
    cpf = str enviada pelo usuario
    tamanho = tamanho da str

    Retorna o cpf formatado ou finaliza a aplicação

    '''
    if tamanho == 14:
        if cpf[3] == '.'and cpf[7] == '.' and cpf[11] == '-':
            parte_1 = cpf[:3]
            parte_2 = cpf[4:7]
            parte_3 = cpf[8:11]
            parte_4 = cpf[12:]
            novo_cpf = parte_1 +parte_2 + parte_3 + parte_4
            try:
                if isinstance(int(novo_cpf),int):
                    
                    return novo_cpf
            except:
                 print('cpf invalido!')
                 sys.exit(0)
                    
        else:
            print('cpf invalido!')
            sys.exit(0)
   
    elif tamanho == 11:
        try:
            if isinstance(int(cpf),int):
                novo_cpf = cpf
                return novo_cpf
        except ValueError as erro:
            print('cpf invalido!')
            sys.exit(0)
    else:
        print(f'cpf com tamanho errado!')
        sys.exit(0)

def valida_cpf(cpf_conferido,cpf):
    '''
    Função responsável pelos calculos que verificam se o cpf é valido
    Faz a verificação do PDV (Primeiro Digito Verificador) e do SDV (Segundo 
    Digito Verificador) 

    atributos
    cpf_conferido = str cpf tratado pelo validando_formato
    cpf = str cpf enviado pelo usuário apenas para montar msg

    Retorna válido ou inválido
    '''
    nove_digitos = cpf_conferido[:9]
    contador_regressivo_1 = 10

    resultado_digito_1 = 0
    for digito in nove_digitos:
        resultado_digito_1 += int(digito) * contador_regressivo_1
        contador_regressivo_1 -= 1
    digito_1 = (resultado_digito_1 * 10) % 11
    digito_1 = digito_1 if digito_1 <= 9 else 0
    print(f'O primeiro Digito verificador encontrado é: {digito_1}')
    dez_digitos = nove_digitos + str(digito_1)
    contador_regressivo_2 = 11

    resultado_digito_2 = 0
    for digito in dez_digitos:
        resultado_digito_2 += int(digito) * contador_regressivo_2
        contador_regressivo_2 -= 1
    digito_2 = (resultado_digito_2 * 10) % 11
    digito_2 = digito_2 if digito_2 <= 9 else 0
    print(f'O segundo digito verificador encontrado é: {digito_2}')

    cpf_gerado_pelo_calculo = f'{nove_digitos}{digito_1}{digito_2}'

    if cpf_conferido == cpf_gerado_pelo_calculo:
        print(f'O PDV é {digito_1} e o enviado foi {cpf[-2]}')
        print(f'O SDV é {digito_2} e o eniado foi {cpf[-1]}')
        print('O CPF é válido')
    else:
        print('O CPF inválido')

#inicia as listas que serão usadas pela aplicação
cpf=[] 
cpf_conferido = []
cpf = input('Digite um cpf apenas com numeros ou no formato XXX.XXX.XXX-YY: ')
tamanho = len(cpf)
#comando para limpar a tela para deixar apenas a exibição solicitada
os.system('cls')
#aqui começo a montar a saida conforme solicitado na etapa do trabalho

print(f'Voce enviou o cpf: {cpf}')
#chamada das funções
cpf_conferido = validando_formato(cpf,tamanho)
cpf_conferido = str(cpf_conferido)
valida_cpf(cpf_conferido,cpf)
