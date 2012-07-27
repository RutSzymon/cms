# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :gallery do
    title "MyString"
    description "MyText"
    permalink "MyString"
    photo_id 1
  end
end
