#language: pt


Funcionalidade: Editar Card Trello

@put_card
Cenario: Atualizar Card
Dado que faço a chamada Put na api do trello
Quando envio a requisição Put para editar um Card
Então deve atualizar os dados e retornar o status code 200
E atualizar os campos conforme atualização feita