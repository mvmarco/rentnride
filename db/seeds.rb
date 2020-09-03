# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# WE NEED TO CLEAN THE DATABASE??????

Car.destroy_all
User.destroy_all

user = User.new(name: "Uros", email: "inbox.si@gmail.com", password: "123456", phone_number: "123")

user.save


file = URI.open('https://i.pinimg.com/originals/d6/1d/b2/d61db22f3b3979029b3cf07e4aa504ea.jpg')
car = Car.new(model: "Ferrari 250 Testa Rossa", description: "Beautiful italian car.", price: 1200, pickup_address: "Barra da Tijuca", user: user)
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
car.save