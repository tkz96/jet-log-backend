FactoryBot.define do
  factory :aeroplane do
    # title { Faker::Lorem.sentence }
    # content { Faker::Lorem.paragraph }
    name { Faker::Lorem.word }
    make_year { Faker::Number.number(digits: 4) }
    # country_of_origin { Faker::String.random(length: 10) }
    country_of_origin { Faker::Lorem.word }
    fuel_economy { Faker::Lorem.word }
    long_range_cruise_speed { Faker::Number.decimal(l_digits: 1, r_digits: 1) }
    passenger_capacity { Faker::Number.number(digits: 3) }
    crew { Faker::Number.number(digits: 2) }
    description { Faker::Lorem.paragraph }
    photo { Faker::Placeholdit.image }
  end
end
