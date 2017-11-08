FactoryGirl.define do
  factory :item do
    sequence :name do |n|
      "{n}name"
    end
    description "description"
    price 8.99
    unit_measurement "lbs"
    days_to_maturity 3
    role 0
    image_path "/cucumber_corinto.jpg"
    association :category
  end
end
