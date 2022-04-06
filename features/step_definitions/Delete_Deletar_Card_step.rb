Dado('que faço a chamada Delete na api do trello') do                                              
  end                                                                                          
                                                                                               
  Quando('envio a requisição Delete para excluir um Card') do                                  
    $request_cards = card.delete_cards
  end                                                                                          
                                                                                               
  Então('deve excluir o card e retornar o status code {int}') do |code|
    expect($request_cards.code).to eq code                                   
  end                                                                                          