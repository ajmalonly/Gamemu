require "open-uri"

puts "Cleaning Database"
Booking.destroy_all
Game.destroy_all
User.destroy_all
puts "Database Clean"

puts "Creating seeds"
user_one = User.create(email: "test1@gmail.com", password: "123456")
user_two = User.create(email: "test2@gmail.com", password: "123456")
user_three = User.create(email: "test3@gmail.com", password: "123456")

game1 = Game.new(game_name: "Minecraft", description: "Build your world or try your survival skills", price: 100 , user: user_one)
file = URI.open("https://res.cloudinary.com/djyudyavk/image/upload/v1661930972/Airbnb%20Project/minecraft.jpeg_lhlh4h.jpg")
game1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
game1.save
puts game1.game_name

game2 = Game.new(game_name: "Grand Theft Auto V ", description: "Control 3 characters in one game", price: 250, user: user_one)
file = URI.open("https://res.cloudinary.com/djyudyavk/image/upload/v1661930972/Airbnb%20Project/gta_5_d1uad5.jpg")
game2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
game2.save

game3 = Game.new(game_name: "F1 2021", description: "Expose your drive skills", price: 150, user: user_one)
file = URI.open("https://res.cloudinary.com/djyudyavk/image/upload/v1661930972/Airbnb%20Project/F1_2021_h1r17z.jpg")
game3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
game3.save
puts game3.game_name

game4 = Game.new(game_name: "Fifa 22", description: "Try to build the best team possible", price: 125, user: user_two)
file = URI.open("https://res.cloudinary.com/djyudyavk/image/upload/v1661931164/Airbnb%20Project/Fifa_22_hmylhr.jpg")
game4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
game4.save

game5 = Game.new(game_name: "God of War", description: "Yordle the mose powerful", price: 125, user: user_two)
file = URI.open("https://res.cloudinary.com/djyudyavk/image/upload/v1661931276/Airbnb%20Project/Gods_of_war_hszfy4.jpg")
game5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
game5.save
puts game5.game_name


game6 = Game.new(game_name: "Watch dogs 2", description: "Hacking is the main passion", price: 125, user: user_two)
file = URI.open("https://res.cloudinary.com/djyudyavk/image/upload/v1661931667/Airbnb%20Project/watch_dogs_2_qynxi1.jpg")
game6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
game6.save

game7 = Game.new(game_name: "Assassins Creed Valhalla", description: "Explore and kill in silence", price: 200, user: user_three)
file = URI.open("https://res.cloudinary.com/djyudyavk/image/upload/v1661942423/Airbnb%20Project/AS_Valhalla_gntgiq.jpg")
game7.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
game7.save
puts game7.game_name

game8 = Game.new(game_name: "The Crew 2", description: "Be the best driver in Chicago", price: 175, user: user_three )
file = URI.open("https://res.cloudinary.com/djyudyavk/image/upload/v1661931666/Airbnb%20Project/The_Crew_2_uksouj.jpg")
game8.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
game8.save

game9 = Game.new(game_name: "Red Dead Redemption 2", description: "Be the most powerful cowboy", price: 300, user: user_three )
file = URI.open("https://res.cloudinary.com/djyudyavk/image/upload/v1661931667/Airbnb%20Project/RDR_2_dv1e7h.jpg")
game9.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
game9.save
puts game9.game_name

game10 = Game.new(game_name: "The Witcher 3", description: "Have the best bow and explore the world", price: 275, user: user_three )
file = URI.open("https://res.cloudinary.com/djyudyavk/image/upload/v1661931667/Airbnb%20Project/The_Witcher_3_tvrjab.jpg")
game10.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
game10.save

game11 = Game.new(game_name: "Sea of Thieves", description: "Build the best boat with your friends", price: 10, user: user_three )
file = URI.open("https://res.cloudinary.com/djyudyavk/image/upload/v1662112507/Airbnb%20Project/Sea_of_thieves__fza3ks.jpg")
game11.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
game11.save

game12 = Game.new(game_name: "Elder Ring", description: "One rule = be the last one alive", price: 11, user: user_three )
file = URI.open("https://res.cloudinary.com/djyudyavk/image/upload/v1662112507/Airbnb%20Project/Elder_ring_aq7twp.jpg")
game12.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
game12.save

puts "Seeds created!"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
