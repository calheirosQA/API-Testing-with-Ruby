# Teste_QA_API-VR
Repositório criado para executar o seguinte teste:
```shell
1 - Criar uma funcionalidade para consultar os dados de um endereço a partir de um CEP.
2 - Cenários:    
    2.1 - Criar um cenário de sucesso na consulta, printando o código do IBGE do endereço no stdout.
    2.2 - Criar um cenário passando um CEP inválido
```

## Instalação

### Para instalação das Gems primeiramente é necessário instalar o bundler ###
para instalar o bundle:
```shell
gem install bundler
```

##### Gems que vão ser instaladas #####

Gems necessárias para rodar os testes:
source 'https://rubygems.org'

```shell
gem 'cucumber'
gem 'faker'
gem 'httparty'
gem 'rspec'
```

### Instalação das gems ###
Primeiro Passo entrar na pasta do projeto via cmd ou shell e instalar as gems com o comando:
```shell
bundle install
```
### Para execução dos cenários ###
```shell
cucumber
```


