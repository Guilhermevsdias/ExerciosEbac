Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto: 
Dado que eu acesse o site da EBAC-SHOP

Cenario: Cadastro com todos os dados obrigatórios preenchidos
Quando eu preencho todos os campos obrigatórios com dados válidos
E clico em "Finalizar Cadastro"
Entao o sistema deve concluir o cadastro com sucesso

Esquema do Cenario: Cadastro com todos os dados obrigatórios preenchidos
Dado que o usuário acessa a tela de cadastro
E reenche os campos obrigatórios com dados <validados>
Quando clica em "Finalizar Cadastro"
Entao o sistema deve exibir o <resultado>

Examples:
| validados | resultado                       |
| válidos   | concluir o cadastro com sucesso |


Cenario: Cadastro com e-mail inválido
Quando eu preencho os campos obrigatórios com um e-mail inválido
E clico em "Finalizar Cadastro"
Entao o sistema deve exibir uma mensagem de erro de e-mail inválido

Esquema do Cenario: Cadastro com e-mail inválido
Dado que o usuário acessa a tela de cadastro
E preenche os campos obrigatórios com um e-mail <email>
Quando clica em "Finalizar Cadastro"
Entao o sistema deve exibir a <mensagem de erro>

Examples:
| email        | mensagem de erro                               |
| inválido     | exibir uma mensagem de erro de e-mail inválido |

Cenario: Cadastro com campos obrigatórios em branco
Quando eu tento enviar o formulário  preencher os campos obrigatórios
E não preencho os campos obrigatórios
Entao o sistema deve exibir mensagens de alerta para os campos obrigatórios

Esquema do Cenario: Cadastro com campos obrigatórios em branco
Dado que o usuário acessa a tela de cadastro
E <preenchimento de campos>
Quando tenta enviar o formulário
Entao o sistema deve exibir a <mensagem de alerta>

Examples:
| preenchimento de campos                | mensagem de alerta                                     |
| não preenche os campos obrigatórios    | exibir mensagens de alerta para os campos obrigatórios |
