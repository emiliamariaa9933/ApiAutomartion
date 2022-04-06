module Rest
    class Cards
        include HTTParty

        headers 'Content-Type' => 'application/json'
        URL_TESTE = CONFIG['base_uri']
        KEY = 'f7fa71a3ed229327517f1db8321cca14'
        TOKEN = 'f6a42783224d301e9e983123c682df47b40aa29c74df4f9f34e6e3c1300634ae'
        ID_LIST = '624d0be1a043d0069009655f'
        ID_CARD = File.read('features/arquivos/id_dinamico.txt').gsub(/\n/, '')

        def post_cards(createcard)
            self.class.post("#{URL_TESTE}/1/cards?idList=#{ID_LIST}&key=#{KEY}&token=#{TOKEN}", body: createcard.to_json)
        end

        def put_cards(updatecard)
            self.class.put("#{URL_TESTE}/1/cards/#{ID_CARD}?key=#{KEY}&token=#{TOKEN}", body: updatecard.to_json)
        end

        def delete_cards
            self.class.delete("#{URL_TESTE}/1/cards/#{ID_CARD}?key=#{KEY}&token=#{TOKEN}")
        end
    end
end