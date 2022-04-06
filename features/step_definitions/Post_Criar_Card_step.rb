Dado('que faço a chamada na api do trello') do
  end
  
  Quando('envio a requisição Post para criar um Card') do
    @payload_cards = build(:createcard).card_hash_post
    @request_cards = card.post_cards(@payload_cards)
  end
  
  Então('deve retornar o status code {int}') do |code|
    expect(@request_cards.code).to eq code
  end
  
  Então('o id com {int} caracteres') do |idcard|
    expect(@request_cards.parsed_response["id"].length).to eql idcard
    @data = @request_cards.parsed_response["id"]
    out = File.new("features/arquivos/id_dinamico.txt", "w")
    out.puts @data
    out.close
  end