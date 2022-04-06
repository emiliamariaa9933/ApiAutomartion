Quando('envio a requisição Delete para excluir um Card ja excluído') do
    $request_cards = card.delete_cards
  end
  
  Então('deve excluir o card e retornar o status code {int} de insucesso') do |code|
    expect($request_cards.code).to eq code
  end
  
  Então('a mensagem de insucesso') do
    expect($request_cards.parsed_response).to eql "The requested resource was not found."
  end
  