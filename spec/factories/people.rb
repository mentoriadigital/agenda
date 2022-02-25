FactoryBot.define do
  factory :person do
    name { Faker::Name.name  }
    email { Faker::Internet.email  }
    birthdate { Faker::Date.birthday(min_age: 13, max_age: 99) }
    bio { Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4) }
  end
end
