FactoryGirl.define do
  factory :user_task do
    user_id { rand(1..10) }
    task_id { rand(1..10) }
  end
end