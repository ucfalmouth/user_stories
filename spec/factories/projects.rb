require 'faker'

FactoryGirl.define do
  factory :project do |f|
    f.name { Faker::Name.name }
    f.goal { Faker::Lorem.word }
    f.department_id { Faker::Number.digit }
    f.created_at { Faker::Time.between(2.days.ago, Date.today) }
    f.updated_at { Faker::Time.between(2.days.ago, Date.today) }
  end
end
