Dado('que faço a chamada Put na api do trello') do
  end
  
  Quando('envio a requisição Put para editar um Card') do
    $payload_cards = build(:updatecard).card_hash_put
    $request_cards = card.put_cards($payload_cards)
  end
  
  Então('deve atualizar os dados e retornar o status code {int}') do |code|
    expect($request_cards.code).to eq code
  end

  Então('atualizar os campos conforme atualização feita') do
    expect($request_cards.parsed_response["name"]).to eql "TESTE UPDATE"
    expect($request_cards.parsed_response["desc"]).to eql "NOVA DESCRIÇÃO"
  end