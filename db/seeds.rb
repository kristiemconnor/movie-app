# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock",
  age: "43"})
actor.save

actor = Actor.new({first_name: "Emily", last_name: "VanCamp", known_for: "Revenge",
  age: "33"})
actor.save

actor = Actor.new({first_name: "Keanu", last_name: "Reeves", known_for: "The Matrix",
  age: "55"})
actor.save

actor = Actor.new({first_name: "Allison", last_name: "Janney", known_for: "The West Wing", age: "59"
  })
actor.save

actor = Actor.new({first_name: "Michael J.", last_name: "Fox", known_for: "Back To The Future",
 age: "58"})
actor.save

actor = Actor.new({first_name: "Margot", last_name: "Robbie", known_for: "I, Tonya",
  age: "29"})
actor.save


