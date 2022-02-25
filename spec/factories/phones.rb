FactoryBot.define do
  factory :phone do
    phone { Faker::PhoneNumber.phone_number }
    status { 1 }
    description { Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4) }
    person
  end
end
