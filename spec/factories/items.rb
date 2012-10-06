# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    title "MyString"
    description "MyText"
    category_id 1
    status "MyString"
    user_id 1
  end
end
