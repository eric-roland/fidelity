# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    response "MyString"
    question_id 1
    user_id 1
  end
end
