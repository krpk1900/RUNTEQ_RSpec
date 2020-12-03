FactoryBot.define do
  factory :task do
    sequence(:title) { |n| "Title#{n}" }
    content { 'Content' }
    status { 0 }
    deadline { Time.current.tomorrow }
    association :user
  end
end
