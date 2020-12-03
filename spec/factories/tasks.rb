FactoryBot.define do
  factory :task do
    sequence(:title, "title_1")
    content { 'Content' }
    status { 0 }
    deadline { Time.current.tomorrow }
    association :user
  end
end
