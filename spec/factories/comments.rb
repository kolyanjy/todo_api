FactoryBot.define do
  factory :comment do
    name { Faker::Name.name }
    # image { Faker::Internet.url }
    task
  end
end
