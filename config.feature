Funcionalidade: Configurar produto 
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
e escolher a quantidade
Para depois inserir no carrinho

Contexto: 

Cenario: Seleções obrigatórias
Dado que o cliente entre na página do produto selecionado
Quando selecionar sua cor, tamanho e quantidade 
E clicar em "comprar"
Então o produto deve ser adicionado ao "carrinho de compras"

Cenario: Máximo de produtos por venda
Dado que o cliente entre na página do produto selecionado
Quando adicionar mais de 10 produtos 
E clicar em "comprar"
Então os produtos não devem sem adicionados ao "carrinho de compras"

Cenario: Limpar
Dado que o cliente entre na página do produto selecionado
Quando selecionar sua cor, tamanho e quantidade 
E clicar no botão "limpar"
Então deve voltar ao estado original da página