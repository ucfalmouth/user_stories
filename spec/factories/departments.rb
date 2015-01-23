require 'faker'

FactoryGirl.define do
  factory :department do |f|
    f.name { Faker::Name.name }
    f.created_at { Faker::Time.between(2.days.ago, Date.today) }
    f.updated_at { Faker::Time.between(2.days.ago, Date.today) }
  end 
end
