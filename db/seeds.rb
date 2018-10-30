# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

10.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,)
    10.times do
      dress = Dress.create(
        price: Faker::Number.between(200, 600),
        size: Dress::SIZES.sample,
        heigth: Faker::Number.between(150, 210),
        title:Faker::Hipster.sentence(3),
        description:Faker::Hipster.sentence(3, false, 4),
        category: Dress::CATEGORIES.sample
      )
      user.dresses << dress
    end
end



