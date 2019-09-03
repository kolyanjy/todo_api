FactoryBot.define do
  factory :comment do
    name { Faker::Name.name }
    task
  end
end
