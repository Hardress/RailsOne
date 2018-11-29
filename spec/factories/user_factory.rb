FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    email "peter@example.com"
    password "1234567890"
    first_name "Peter"
    last_name "Example"
    admin false
  end
end