# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create()

Kid.create(name: "Jean", age: 10, localisation:"Marseille", service: "Jardinage", price:15)
Kid.create(name: "Ben", age: 8, localisation:"Lyon", service: "Nettoyage de vitres", price:10)
Kid.create(name: "Lucie", age: 7, localisation:"Bordeaux", service: "Repassage", price:20)
Kid.create(name: "Emily", age: 11, localisation:"Paris", service: "Cuisine", price:30)
Kid.create(name: "Tom", age: 11, localisation:"Nice", service: "Bricolage", price:30)