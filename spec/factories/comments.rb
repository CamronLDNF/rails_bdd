FactoryBot.define do
  factory :comment do
    name { "MyString" }
    comment { "MyText" }
    article { nil }
  end
end
