# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all


# CREATE USERS
usernames = ['aseant', 'avolynsky', 'afoo', 'cbrown', 'dball', 'efeng', 'jhuang', 'mfedorenko', 'slee']

usernames.each do |username|
    User.create!(username: username)
end



Polls.create!("Is the earth flat?", 3)
Polls.create!("Is Jeff Sessions a keebler elf?", 3)

