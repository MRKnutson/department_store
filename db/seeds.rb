# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Department.destroy_all

toys = Department.create(name:'Toys')
clothes = Department.create(name:'Clothes')
grocery = Department.create(name:'Grocery')

toys.items.create(name:'Basketball', price: 12.99)
toys.items.create(name:'Doll', price: 15.95)
toys.items.create(name:'Nerf Gun', price: 65.99)

clothes.items.create(name:'Shirt', price: 19.95)
clothes.items.create(name:'Jeans', price: 49.95)
clothes.items.create(name:'Ball Cap', price: 9.95)

grocery.items.create(name:'Bananas', price: 6.95)
grocery.items.create(name:'Rice', price: 2.95)
grocery.items.create(name:'M&Ms', price: 1.95)
