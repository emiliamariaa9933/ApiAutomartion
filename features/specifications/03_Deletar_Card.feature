#language: pt

@delete_card
Funcionalidade: Deletar Card Trello

Contexto: 
Dado que faço a chamada Delete na api do trello

@delete_card_sucess
Cenario: Deletar Card
Quando envio a requisição Delete para excluir um Card
Então deve excluir o card e retornar o status code 200

@delete_card_insucess
Cenario: Deletar Card já excluído
Quando envio a requisição Delete para excluir um Card ja excluído
Então deve excluir o card e retornar o status code 404 de insucesso
E a mensagem de insucesso


