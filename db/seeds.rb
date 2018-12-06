# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



item = Item.create(title: 'vodka Sobieski', description: 
'37.5° 70cl', price: '12.19')

item = Item.create(title: 'Malboro', price: '8.00')
shop = Shop.create(title: 'Alimentation General Italie', address: ' 138 avenue d’Italie, Paris', tobacco: true)
shop = Shop.create(title: 'ÉPICERIE DE TENON', address: '46 rue Pelleport – 75020', tobacco: false)

