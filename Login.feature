#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Cenario: Dados Inválidos
Dado que eu acesse a página de Login da EBAC-SHOP
Quando eu digitar o usuário "joaozinho123@ebac.com.br"
E a senha "54321"
Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

Cenario: Dados Válidos
Dado que eu acesse a página de Login da EBAC-SHOP
Quando eu digitar o usuário "joaozinho123@ebac.com.br"
E a senha "12345"
Então deve direcionar para a página de checkout