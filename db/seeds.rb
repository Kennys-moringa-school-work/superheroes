

# powers = [
#   {name:"super strength: ", description: "1. gives the wielder super human strengths"},
#   {name:"flight : ", description: "2. gives the wielder the ability to fly through the skys at supersonic speed"},
#   {name:"super human senses: ", description: "3. allows the person to user their senses at super human level"},
#   {name:"elasticity: ", description: "4. can stretch the human body to extreme lengths"},
# ]

# powers.each {|power| Power.create(power)}

# heroes = [
#   {name:"Peter Parker", supername:"Spider-Man" },
#   {name:"Steve Rogers", supername:"Captain America" },
#   {name:"Bruce Banner", supername:"Hulk" },
#   {name:"Natasha Romanoff", supername:"Black Widow" },
#   {name:"Matthew Murdock", supername:"Dare Devil" },
#   {name:"Reed Richards", supername:"Mr.Fantastic" },
#   {name:"T'Challa", supername:"Black Panther" },
#   {name:"Thor Odinson", supername:"Thor" },
#   {name:"Tony Stark", supername:"Iron Man" },
#   {name:"Carol Danvers", supername:"Captain Marvel" }
# ]

# # ---------------
# # POWERFUL HEROES:
# # Once you set up your tables and associations the way you want them, you can
# # uncomment the following method to associate superheroes with a superpower!
# # Just uncomment line 33 and run `rake db:seed` again in your terminal.
# # (Note: If you try to do this before you set up proper associations, it will error.)
# # ---------------
# # heroes = heroes.map { |hero| hero.merge( { power_id: Power.all.sample.id } ) }
# # ---------------
# heroes.each { |hero| Hero.create(hero) }

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'seeding heroes...'
Hero.create!(name: "Kamala Khan", supername: "Ms. Marvel")
Hero.create!(name: "Doreen Green", supername: "Squirrel Girl")
Hero.create!(name: "Gwen Stacy", supername: "Spider-Gwen")
puts 'seeding powers...'
Power.create!(name: "super strength", description: "gives the wielder super-human strengths")
Power.create!(name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed")
Power.create!(name: "minimal strength", description: "gives the wielder to move from point A to B")
puts 'seeding heropowers...'
Heropower.create(strength: "Average", power_id: 1, hero_id:3)
Heropower.create(strength: "Weak", power_id: 2, hero_id:1)
Heropower.create(strength: "Strong", power_id: 3, hero_id:2)
puts '✅ Done seeding'