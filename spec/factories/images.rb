# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :image do
    name "MyString"
    description "MyText"
    file "MyString"
    item_id 1
  end
end
