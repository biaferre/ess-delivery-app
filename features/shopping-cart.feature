Feature: Shopping Cart

Scenario: Remover item do carrinho
Given Eu estou na tela "Carrinho" como cliente
And Tenho o item "Whopper" de ID "48372847" cadastrado no carrinho
When Eu clico em “Excluir” para o item "Whopper" de ID "48372847" 
And Eu vejo uma mensagem de confirmação para a exclusão do item
And Eu clico em "Confirmar"
Then O item "Whopper" de ID "48372847" não está mais no carrinho

Scenario: Incrementar quantidade de item
Given Eu estou na tela "Carrinho" como cliente
And Tenho o item "Whopper" que custa "20,99" cadastrado no carrinho em quantidade "2"
When Eu clico em “+1” para o item "Whopper" 
Then A quantidade do item "Whopper" incrementa para "3"
And A label que mostra a quantidade do item reflete a incrementação 
And O total a ser pago aumenta em "20,99"

Scenario: Limpar carrinho
Given Eu estou na tela "Carrinho" como cliente
And Tenho os itens "Whopper", "Batata", "Coca" no carrinho
When Eu clico em “Limpar Carrinho" na tela 
And Eu vejo uma mensagem de confirmação para a limpeza do carrinho
And Eu clico em "Confirmar"
Then os itens "Whopper", "Batata" e "Coca" são removidos do carrinho

Scenario: Fazer pedido
Given Eu estou na tela "Carrinho" como cliente
And Tenho os itens "Whopper" ,"Batata" e "Coca" 
When Eu clico em "Fazer pedido" 
Then Navego para a tela "Pagamento" 
