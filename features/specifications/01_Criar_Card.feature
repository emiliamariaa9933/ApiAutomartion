#language: pt

@post_card
Funcionalidade: Criar Card Trello

Contexto: 
Dado que faço a chamada na api do trello

@post_data_invalida
Cenario: Data Inválida
Quando envio a requisição Post para criar um Card com a data inválida
Então deve retornar o status code de erro 400
E o schema do contrato para a requisição post

@post_formato_invalido
Cenario: Formato do campo invalido
Quando envio a requisição Post para criar um Card com um campo inválido
Então deve retornar o status code de erro 400 para a requisição
E a mensagem de erro

@post_sucesso
Cenario: Criar Card com Sucesso
Quando envio a requisição Post para criar um Card
Então deve retornar o status code 200
E o id com 24 caracteres