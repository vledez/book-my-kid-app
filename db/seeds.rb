# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."

Kid.destroy_all
User.destroy_all

puts "Creating kids / user"

User.create(email:"admin@lewagon.com", password:"123456")

Kid.create(name: "Bob", age: 9, localisation:"Marseille", service: "Bricolage", price:22)
Kid.create(name: "Stéfanie", age: 11, localisation:"Lyon", service: "Bricolage", price:35)
Kid.create(name: "Lucie", age: 7, localisation:"Nice", service: "Repassage", price:20)
Kid.create(name: "Jean", age: 10, localisation:"Marseille", service: "Jardinage", price:15)
Kid.create(name: "Amélie", age: 11, localisation:"Lyon", service: "Cuisine", price:25)
Kid.create(name: "Emily", age: 11, localisation:"Paris", service: "Cuisine", price:30)
Kid.create(name: "Ben", age: 8, localisation:"Bordeaux", service: "Nettoyage de vitres", price:10)
Kid.create(name: "Lisa", age: 7, localisation:"Marseille", service: "Etendre le linge", price:16)
Kid.create(name: "Tom", age: 12, localisation:"Paris", service: "Faire les devoirs", price:23)
Kid.create(name: "Fleur", age: 7, localisation:"Bordeaux", service: "Repassage", price:26)
Kid.create(name: "Marcel", age: 6, localisation:"Paris", service: "Jardinage", price:17)
Kid.create(name: "Jane", age: 11, localisation:"Bordeaux", service: "Peinture", price:28)
Kid.create(name: "Carla", age: 11, localisation:"Nice", service: "Nettoyage des vitres", price:14)
Kid.create(name: "Jacques", age: 10, localisation:"Paris", service: "Jardinage", price:15)
Kid.create(name: "Benjamin", age: 8, localisation:"Nice", service: "Cuisine", price:18)
Kid.create(name: "Marius", age: 8, localisation:"Marseille", service: "Nettoyage des vitres", price:11)

puts "Finished!"