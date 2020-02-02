# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
  Pet.create(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    kind: :dog,
    birthdate: Faker::Date.between(from: 15.years.ago, to: Date.today)
  )
end

50.times do
  Pet.create(
    name: Faker::Creature::Cat.name,
    breed: Faker::Creature::Cat.breed,
    kind: :cat,
    birthdate: Faker::Date.between(from: 15.years.ago, to: Date.today)
  )
end

Pet.all.each do |pet|
  rand(0..5).times do
    MedicalRecord.create(
      pet: pet,
      symtoms: Faker::TvShows::SiliconValley.quote,
      treatment: Faker::TvShows::SiliconValley.quote
    )
  end
end
