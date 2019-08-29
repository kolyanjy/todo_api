FactoryBot.define do
  factory :task do
    name { Faker::Name.name }
    deadline { Time.now + 1.week }
    comments_count { rand(1..10) }
    project
  end
end
