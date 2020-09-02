# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all
User.destroy_all

user = User.new(name: "Uros", email: "inbox.si@gmail.com", password: "123456", phone_number: "123")

user.save


ferrari250 = Car.create!(model: "Ferrari 250 Testa Rossa", description: "Testa Rossa is Italian for 'red head'. It was so named due to the red hue of the valve covers on the 3.0-liter V-12.", price: 1200, pickup_address: "Barra da Tijuca", user: user)
