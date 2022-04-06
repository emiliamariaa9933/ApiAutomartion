Quando('envio a requisição Post para criar um Card com a data inválida') do      
    $payload_cards = build(:postinvaliddate).invalid_date_post
    $request_cards = card.post_cards($payload_cards)    
  end                                                                              
                                                                                   
  Então('deve retornar o status code de erro {int}') do |code|                      
    expect($request_cards.code).to eq code
  end                                                                              
                                                                                   
  Então('o schema do contrato para a requisição post') do                      
    expect($request_cards.parsed_response["message"]).to eql "invalid date"
    expect($request_cards.parsed_response["error"]).to eql "ERROR"
  end                                                                              
                                                                                   