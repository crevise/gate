FactoryGirl.define do
  factory :user do
    sequence(:name){|n| "TestUser#{n}}"}
    sequence(:email) {|n| "test#{n}@test.com"}
    active true
    admin false
    encrypted_password ""
    sequence(:reset_password_token) {|n| "secret#{n}" }
    after(:create) do |user, evaluator|
      group = Group.first
      user.groups << group
    end
  end
end
