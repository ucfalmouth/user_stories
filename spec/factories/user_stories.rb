require 'faker'

FactoryGirl.define do
  factory :user_story do |f|
    f.actor { Faker::Name.name }
    f.narrative { Faker::Lorem.word }
    f.goal { Faker::Lorem.word }
    f.project_id { Faker::Number.digit }
    f.created_at { Faker::Time.between(2.days.ago, Date.today) }
    f.updated_at { Faker::Time.between(2.days.ago, Date.today) }
  end
end
