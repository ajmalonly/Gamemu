puts "Cleaning Database"
Booking.destroy_all
User.destroy_all
Game.destroy_all
puts "Database Clean"

puts "Creating seeds"
user_one = User.create(email: "test1@gmail.com", password: "123456")
user_two = User.create(email: "test2@gmail.com", password: "123456")
user_three = User.create(email: "test3@gmail.com", password: "123456")

game_one = Game.create(game_name: "Minecraft", description: "Build your world or try your survival skills", price: 100 , user: user_one)
game_two = Game.create(game_name: "Grand Theft Auto V ", description: "Control 3 characters in one game", price: 250 , user: user_one)
game_three = Game.create(game_name: "F1 2021", description: "Expose your drive skills", price: 150, user: user_one)
game_four = Game.create(game_name: "Fifa 23", description: "Try to build the best team possible", price: 400, user: user_two)
game_five = Game.create(game_name: "Gods of War", description: "", price: 125, user: user_two)
game_six = Game.create(game_name: "Watch dogs 2", description: "Hacking is the main passion", price: 125, user: user_two)
game_seven = Game.create(game_name: "Assassins Creed Valhalla", description: "Explore and kill in silence", price: 200, user: user_three)
game_height = Game.create(game_name: "The Crew 2", description: "Be the best driver in Chicago", price: 175, user: user_three )
game_nine = Game.create(game_name: "Red Dead Redemption 2", description: "Be the most powerful cowboy", price: 300, user: user_three )
game_ten = Game.create(game_name: "Playground Battleground", description: "Be the last survivor ", price: 75, user: user_three )

puts "Seeds created!"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
