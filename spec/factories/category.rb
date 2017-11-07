FactoryGirl.define do
  factory :category do
    sequence :title do |n|
      "#{n}stuff"
    end
  end
end
