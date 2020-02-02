# == Schema Information
#
# Table name: pets
#
#  id         :bigint           not null, primary key
#  birthdate  :date
#  breed      :string           not null
#  kind       :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :pet do
    birthdate { Faker::Date.between(from: 15.years.ago, to: Date.today) }
    breed { Faker::Creature::Dog.breed }
    kind { :dog }
    name { Faker::Creature::Dog.name }

    trait :cat do
      breed { Faker::Creature::Cat.breed }
      kind { :cat }
      name { Faker::Creature::Cat.name }
    end
  end
end
