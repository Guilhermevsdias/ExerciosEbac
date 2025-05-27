Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Cenario: Cadastro com todos os dados obrigatórios preenchidos
    Quando eu preencho todos os campos obrigatórios com dados válidos
    E clico em "Finalizar Cadastro"
    Entao o sistema deve concluir o cadastro com sucesso

    Cenario: Cadastro com e-mail inválido
    Quando eu preencho os campos obrigatórios com um e-mail inválido
    E clico em "Finalizar Cadastro"
    Entao o sistema deve exibir uma mensagem de erro de e-mail inválido

    Cenario: Cadastro com campos obrigatórios em branco
    Quando eu tento enviar o formulário  preencher os campos obrigatórios
    E não preencho os campos obrigatórios
    Entao o sistema deve exibir mensagens de alerta para os campos obrigatórios

Esquema do Cenário: Preenchimento do formulário de cadastro
    Dado que o cliente está na página de cadastro
    Quando preencher o formulário com os dados:
      | nome       | sobrenome | email              | país    | endereço         | cidade    | cep        | telefone     |
      | <nome>     | <sobrenome> | <email>          | <país>  | <endereço>       | <cidade>  | <cep>      | <telefone>   |
    E clicar no botão "Cadastrar"
    Então o sistema deve exibir a mensagem "<mensagem>"

    Exemplos:
      | nome     | sobrenome | email                         | país     | endereço       | cidade     | cep        | telefone     | mensagem                               |
      | João     | Silva     | joaozinho123@ebac.com.br      | Brasil   | Rua A, 123     | São Paulo  | 01000-000  | 11999999999  | Cadastro realizado com sucesso         |
      | Maria    | Souza     | joao#ebac.com.br              | Brasil   | Rua B, 456     | Rio        | 22000-000  | 21999999999  | E-mail inválido                        |
      |          | vieira    | vieira@ebac.com.br            | Brasil   | Rua C, 789     | Recife     | 50000-000  | 81999999999  | Preencha todos os campos obrigatórios  |
      | Ana      |           | ana@ebac.com.br               | Brasil   | Rua D, 321     | Salvador   | 40000-000  | 71999999999  | Preencha todos os campos obrigatórios  |
      | Bruno    | Lima      |                               | Brasil   | Rua E, 111     | Curitiba   | 80000-000  | 41999999999  | Preencha todos os campos obrigatórios  |