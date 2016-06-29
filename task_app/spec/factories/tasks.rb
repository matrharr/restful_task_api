FactoryGirl.define do
  factory :task do
    title { FFaker::Name.first_name }
    description { FFaker::Lorem.sentence }
  end
end