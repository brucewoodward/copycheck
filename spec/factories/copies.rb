
FactoryGirl.define do
  factory :copy do
    date { Time.now }
    text { Faker::Lorem.paragraph(3) }
    name { Faker::Internet.user_name }
    project_key { Key.generate }
  end
end
