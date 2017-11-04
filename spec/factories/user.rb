FactoryGirl.define do
  factory :user do
    sequence :first_name do |n|
      "{n}first_name"
    end
    sequence :last_name do |n|
      "{n}last_name"
    end
    email "email.com"
    password "123"
  end
end
