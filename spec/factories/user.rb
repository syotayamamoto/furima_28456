FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation { password }
    first_name            { "全かク" }
    family_name           { "全かク" }
    first_name_kana       { "ゼンカクカナ" }
    family_name_kana      { "ゼンカクカナ" }
    birth_date            { "2020-01-01" }
  end
end