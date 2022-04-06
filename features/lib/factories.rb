require 'faker'
require_relative '../models/cards_model'

FactoryBot.define do
    factory :postinvaliddate, class: CardsModel do
        name { "TESTE CREATE" }
        desc {Faker::Hobby.activity}
        pos  { "top" }
        due { "quarta" }
    end

    factory :postinvalidcampo, class: CardsModel do
        name { 7 }
        desc {Faker::Hobby.activity}
        pos  { "top" }
        due { "quarta" }
    end

    factory :createcard, class: CardsModel do
        name { "TESTE CREATE" }
        desc {Faker::Hobby.activity}
        pos  { "top" }
        due {Faker::Date.forward(days: 23)}
    end

    factory :updatecard, class: CardsModel do
        name { "TESTE UPDATE" }
        desc { "NOVA DESCRIÇÃO"}
        pos  { "top" }
        due {Faker::Date.forward(days: 23)}
    end
end