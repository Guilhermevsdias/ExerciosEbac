            #language: pt

            Funcionalidade: Tela de cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse o site da EBAC-SHOP

            Cenario: Cadastro com todos os dados obrigatórios preenchidos
            Dado que o usuario esteja na tabela de cadastro
            Quando preencher os campos obrigatórios com dados válidos e clicar em "Finalizar Cadastro"
            Entao o sistema deve concluir o cadastro com sucesso

            Esquema do Cenario: Cadastro com todos os dados obrigatorios preenchidos

            Dado que o usuario esta na tela de cadastro
            Quando preencher os campos obrigatorios com os <dados_validos>
            Entao o sistema deve exibir a <mensagem_de_sucesso>

            Exemplos:
            | dados_validos                           | mensagem_de_sucesso                             |
            | Nome: "João", Email: "joao@email.com"   | "Cadastro realizado com sucesso!"               |
            | Nome: "Maria", Email: "maria@email.com" | "Bem-vinda, Maria! Seu cadastro foi concluído." |

            Cenario: Cadastro com e-mail inválido
            Dado eu preencho os campos obrigatórios com um e-mail inválido
            Quando clico em "Finalizar Cadastro"
            Entao o sistema deve exibir uma mensagem de erro de e-mail inválido

            Esquema do Cenario: Cadastro com e-mail invalido
            Dado que o usuario esteja na tela de cadastro
            Quando preenche o campo obrigatorio com <email>
            Entao o sistema deve exibir a <mensagem de erro>

            Exemplos:
            | email    | mensagem de erro                  |
            | teste    | "O e-mail inserido não é válido." |
            | usuario@ | "Formato de e-mail inválido."     |


            Cenario: Cadastro com campos obrigatórios em branco
            Dado eu tento enviar o formulário  preencher os campos obrigatórios
            Quando não preencho os campos obrigatórios
            Entao o sistema deve exibir mensagens de alerta para os campos obrigatórios

            Esquema do Cenario: Cadastro com campos obrigatorios em branco
            Dado que o usuario esteja na tela de cadastro
            Quando preeencher os campos com <nome>,<email>,<senha> e tentar enviar o formulario
            Entao o sistema deve exibir a <mensagem de alerta>

            Exemplos:
            | nome       | email          | senha    | mensagem de alerta                                                                             |
            |            | joao@email.com | Senha123 | "O campo Nome é obrigatório."                                                                  |
            | João Silva |                | Senha123 | "O campo E-mail é obrigatório."                                                                |
            | João Silva | joao@email.com |          | "O campo Senha é obrigatório."                                                                 |
            |            |                |          | "O campo Nome é obrigatório.", "O campo E-mail é obrigatório.", "O campo Senha é obrigatório." |