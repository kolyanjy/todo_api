FactoryBot.define do
  factory :task do
    name { Faker::Name.name }
    deadline { Date.today + 1.week }
    project
  end
end
