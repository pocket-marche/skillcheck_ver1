FactoryBot.define do
  factory :variant do
    price { rand(100..900) }
    measurement { Faker::Food.measurement }
  end
end
