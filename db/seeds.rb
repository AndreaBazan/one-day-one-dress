# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Rental.destroy_all
Dress.destroy_all
User.destroy_all

User.create!(
  email: 'user@user.com',
  password: '123456',
  first_name: 'User',
  last_name: 'Tester',
  remote_photo_url: 'https://res.cloudinary.com/db30ffchh/image/upload/v1541123679/bn0h5kyddfjwaihchbig.png'
)

User.create!(
  email: 'andrea@bazan.com',
  password: '123456',
  first_name: 'User',
  last_name: 'Tester',
  remote_photo_url: 'https://res.cloudinary.com/db30ffchh/image/upload/v1541130873/sycagu6gvwa745hqky5n.jpg'
)

Dress.create!(
  price: 1200,
  size: 'S',
  heigth: 160,
  title: 'Angel dress',
  description: 'White and amazing dress',
  category: 'day',
  remote_photo_url: 'https://res.cloudinary.com/db30ffchh/image/upload/v1541188237/FW18-09-1.jpg',
  user: User.last
)
