# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding database tables"

strength = ["Strong","Weak","Average"]

puts "Seeding Hero table"

hero1 = Hero.create(name:"Kamala Khan",super_name:"Ms. Marvel",gender:"Female")

hero2 = Hero.create(name:"Doreen Green",super_name:"Squirrel Girl",gender:"Female")

hero3 = Hero.create(name:"Gwen Stacy",super_name:"Spider-Gwen",gender:"Female")

hero4 = Hero.create(name:"Carol Danvers",super_name:"Captain Marvel",gender:"Female")

hero5 = Hero.create(name:"Robert Downey Jr.",super_name:"Iron Man",gender:"Male")

hero6 = Hero.create(name:"Chris Robert Evans",super_name:"Captain America",gender:"Male")

hero7 = Hero.create(name:"Chris Hemsworth",super_name:"Thor",gender:"Male")

hero8 = Hero.create(name:"Benedict Cumberbatch",super_name:"Doctor Strange",gender:"Male")

hero9 = Hero.create(name:"Eric Bana",super_name:"Hulk",gender:"Male")

hero10 = Hero.create(name:"Hugh Jackman",super_name:"Wolverine",gender:"Male")

puts "Seeding Power Table"

power1 = Power.create(name:"super strength", description:"gives the wielder super-human strengths")

power2 = Power.create(name:"flight", description:"gives the wielder the ability to fly through the skies at supersonic speed")


power3 = Power.create(name:"animal-human communication", description:"gives the weilder superhuman senses and strength, razor sharp claws, ability to communicate with squirrels")

power4 = Power.create(name:"spidey-sense", description:"gives the weilder ability to cling to most surfaces, use interdimensional travel, ability to stand far above average human, allowing him/her to lift ten tons and to leap and move at incredible speeds with high accuracy")

power5 = Power.create(name:"warbird", description:"gives the wielder an accelerated healing factor, human/kree physiology granting resistance to poisons ans toxins")

puts "Seeding Hero Powers Table"

15.times do
    HeroPower.create(hero_id: rand(1..10), power_id: rand(1..5), strength: strength.sample)
end

puts "End of Seeding"