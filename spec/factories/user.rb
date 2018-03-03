FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    role { User::USER_ROLE.sample }
  end
end