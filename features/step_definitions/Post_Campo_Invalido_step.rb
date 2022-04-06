Quando('envio a requisição Post para criar um Card com um campo inválido') do
    $payload_cards = build(:postinvalidcampo).invalid_campo_post
    $request_cards = card.post_cards($payload_cards) 
  end
  
  Então('deve retornar o status code de erro {int} para a requisição') do |code|
    expect($request_cards.code).to eq code
  end
  
  Então('a mensagem de erro') do
    expect($request_cards.parsed_response).to eql "invalid value for name"
  end