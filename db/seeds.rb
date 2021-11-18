# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

Department.destroy_all

toys = Department.create(name:'Toys')
clothes = Department.create(name:'Clothes')
grocery = Department.create(name:'Grocery')

bball = toys.items.create(name:'Basketball', price: 12.99)
doll = toys.items.create(name:'Doll', price: 15.95)
nerf = toys.items.create(name:'Nerf Gun', price: 65.99)

shirt = clothes.items.create(name:'Shirt', price: 19.95)
jeans = clothes.items.create(name:'Jeans', price: 49.95)
cap = clothes.items.create(name:'Ball Cap', price: 9.95)

bananas = grocery.items.create(name:'Bananas', price: 6.95)
rice = grocery.items.create(name:'Rice', price: 2.95)
mm = grocery.items.create(name:'M&Ms', price: 1.95)

bball.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
bball.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
bball.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)

doll.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
doll.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
doll.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)

nerf.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
nerf.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
nerf.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)

shirt.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
shirt.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
shirt.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)

jeans.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
jeans.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
jeans.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)

cap.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
cap.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
cap.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)

bananas.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
bananas.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
bananas.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)

rice.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
rice.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
rice.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)

mm.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
mm.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)
mm.comments.create(name: Faker::Movies::PrincessBride.character, body: Faker::Movies::PrincessBride.quote)

