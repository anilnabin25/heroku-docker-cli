# frozen_string_literal: true

FactoryBot.define do
  factory :project do
    title { FFaker::Lorem.phrase }
    description { FFaker::Lorem.paragraph }
    start_date { DateTime.now }
    end_date { DateTime.now + 30.days }
  end
end
