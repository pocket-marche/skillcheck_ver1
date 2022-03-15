FactoryBot.define do
  factory :product do
    name { Faker::Food.fruits }
    description { Faker::Food.description }
  end
end
