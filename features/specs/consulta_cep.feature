# language: pt
#feature desenvolvida e verificada por Thiago Calheiros
@consultas
Funcionalidade: Consultar um endereço apartir de um CEP
    
@consultarCepValido
Esquema do Cenário: Consultar endereço através de um CEP válido
    Dado que o '<CEP>' foi inserido
    Quando a requisição for efetuada
    Então as informações do endereço serão exibidas
    Exemplos:
        | CEP       |
        | 07791-120 |
        | 07791-080 |

@consultarCepInvalido
Esquema do Cenário: Consultar endereço através de um CEP inválido
    Dado que insira o '<CepInvalido>'
    Quando a requisição for efetuada
    Então exibirá a <resposta>
    Exemplos:
        | CepInvalido |resposta|
        | naoexiste     | 400  |
        | notexist      | 400  |