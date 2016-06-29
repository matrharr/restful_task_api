FactoryGirl.define do
  factory :user do
    name { FFaker::Name.first_name }
  end
end