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

user = User.new(name: "User", email: "user@gmail.com", password: "123456", phone_number: "123456")
user2 = User.new(name: "Owner", email: "owner@gmail.com", password: "123456", phone_number: "123456")

user.save
user2.save

require 'uri'
OpenURI::Buffer.send :remove_const, 'StringMax' if OpenURI::Buffer.const_defined?('StringMax')
OpenURI::Buffer.const_set 'StringMax', 0

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c279f1cd_-_100-cars-001-jaguar-xjs-1211-xln.jpg')
car = Car.new(model: "Lamborghini Diablo (1990–2001)", description: "The Diablo succeeded the famous Countach, and features even more wild speed and impracticality than its predecessor. Luckily, its design has done a better job standing the test of time.", price: 1200, pickup_address: "Barra da Tijuca", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c2ddce91_-_100-cars-019-hudson-hornet-1211-xln-66485934.jpg')
car = Car.new(model: "Hudson Hornet (1951–1954)", description: "Hudson is one of Detroit's lesser-known manufacturers. Its Hornet model, however, epitomizes styling and holds a place in history for its significant role in stock-car racing.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c2e3b6eb_-_100-cars-020-ford-thunderbird-1211-xln.jpg')
car = Car.new(model: "Ford Thunderbird (1955–1957)", description: "A true classic by any standards. The original T-Bird was a response to Chevy's Corvette, and oozes '50s diners and drive-ins style from every angle.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c2f3d3e9_-_100-cars-023-austin-healey-3000-1211-xln-49146134.jpg')
car = Car.new(model: "Austin-Healey 3000 (1959–1967)", description: "The Austin-Healey 3000 is a touch larger and heavier than other British roadsters of its day. By today's standard, though, it's still a compact featherweight.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c30a7e66_-_100-cars-027-ferrari-f40-1211-xln.jpg')
car = Car.new(model: "Ferrari F40 (1987–1992)", description: "The hallowed F40 is an icon of automotive enthusiasm. With its terrifyingly turbocharged V-8, it was the first production car ever to cross the 200 mph barrier.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c3105bf9_-_100-cars-028-jaguar-ss100-1211-xln-77358181.jpg')
car = Car.new(model: "SS Cars SS100 (1936–1940)", description: "This long-hooded beauty is an icon of '30s automotive styling. SS Cars later became known as Jaguar.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c3223edd_-_100-cars-031-talbot-lago-t150-css-1211-xln.jpg?resize=768:*')
car = Car.new(model: "Talbot-Lago T150 CSS (1938)", description: "Also known as the teardrop, the CSS was a successful racer from the '30s and featured a jaw-droppingly sleek design that turns heads 70 years later.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c32eb2f9_-_100-cars-033-lincoln-continental-1211-xln.jpg?resize=768:*')
car = Car.new(model: "Lincoln Continental (1961–1969)", description: "The large Continental of the '60s helped to bring about the end of the gaudy, overstyled American cars of the '50s. The 1965 model year is a particular favorite among enthusiasts.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c33a29e5_-_100-cars-035-datsun-240z-1211-xln.jpg?resize=768:*')
car = Car.new(model: "Nissan Fairlady Z (1969–1973)", description: "More commonly called the Datsun 240Z, the original Z car was arguably the most important car in Japan's history. It proved once and for all that the country could compete in the worldwide auto market.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c3414a77_-_100-cars-036-ferrari-testarossa-1211-xln.jpg?resize=768:*')
car = Car.new(model: "Ferrari Testarossa (1984–1996)", description: "Ask a layman to picture a Ferrari and the Testarossa is likely what comes to mind. The boxer 12-cylinder engine and unmistakable appearance make the Testarossa still the definitive Ferrari.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c346750f_-_100-cars-037-triumph-tr6-1211-xln-30755611.jpg?resize=768:*')
car = Car.new(model: "Triumph TR6 (1969–1976)", description: "Slightly old-fashioned in design, the TR6 is one of the most beloved examples of England's automotive specialty, the roadster.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c35185c1_-_100-cars-039-morgan-plus4-1211-xln.jpg?resize=768:*')
car = Car.new(model: "Morgan Plus 4 (1950–1961)", description: "Traditional style blended with more modern concepts of size and weight, the Plus 4 was an attractive option on the English auto market. It eventually shared an engine with the Triumph TR3.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c35cd596_-_100-cars-041-aston-martin-db6-1211-xln-80704423.jpg?resize=768:*')
car = Car.new(model: "Aston Martin DB6 (1965–1971)", description: "The DB6's predecessor, the gorgeous DB5, was a tough act to follow. While it didn't quite achieve the same allure (DB5 is higher on our list), the DB6 was a technical improvement in all aspects—and still pretty enough to make the top 100.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c36301ab_-_100-cars-042-lotus-elite-1211-xln.jpg?resize=768:*')
car = Car.new(model: "Lotus Elite (1958–1963)", description: "The original Lotus Elite set the formula for all Lotuses to follow. It was extremely lightweight (roughly 1100 lbs), allowing it to make the most of its small, 1.2-liter engine.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c36eba14_-_100-cars-044-bmw-30csl-1211-xln.jpg?resize=768:*')
car = Car.new(model: "BMW 3.0CSL (1972–1975)", description: "One of the rarest and most beloved BMW models of all time, the 3.0CSL is arguably the defining German sports coupe of the 1970s.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c374e89a_-_100-cars-045-porsche-356-1211-xln.jpg?resize=768:*')
car = Car.new(model: "Porsche 356 (1954–1965)", description: "It may seem like the Porsche 911 has been around since the dawn of time, but actually, the 356 preceded it as the iconic German sports car.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c37b0851_-_100-cars-046-mazda-rx7-1211-xln.jpg?resize=768:*')
car = Car.new(model: "Mazda RX7 (1993–1995)", description: "From its curvaceous body to its unique Wankel turbocharged rotary engine, the third generation RX7 was unlike anything else on the market.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c3809782_-_100-cars-047-ferrari-f50-1211-xln.jpg?resize=768:*')
car = Car.new(model: "Ferrari F50 (1995–1997)", description: "Although overshadowed by the iconic F40 that came before, the F50 was a more curvaceous and beautiful exotic, and packed a screaming V-12 in lieu of the turbocharged V-8. Only 349 were ever produced.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/768x516/54ca5c390c819_-_100-cars-050a-triumph-gt6-1211-de.jpg?resize=768:*')
car = Car.new(model: "Triumph GT6 (1966–1973)", description: "English automaker Triumph may be better known for its traditional roadsters, but it produced the sharp GT6 sports coupe from the chassis of its Spitfire convertible.", price: 1200, pickup_address: "Rio de Janeiro", user: user)
car.save
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


#file = URI.open('')
#car = Car.new(model: "", description: "", price: 1200, pickup_address: "Rio de Janeiro", user: user)
#car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

