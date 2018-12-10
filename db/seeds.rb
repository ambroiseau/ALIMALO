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

shop = Shop.create(title: 'Alimentation General Italie', adress: ' 138 avenue d’Italie – 75013', tobacco: true)
shop.operating_hours.create(day: 1, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create(day: 2, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create(day: 3, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create(day: 4, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create(day: 5, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create(day: 6, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create(day: 7, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')

shop = Shop.create(title: 'ÉPICERIE DE TENON', adress: '46 rue Pelleport – 75020', tobacco: false)
shop.operating_hours.create(day: 1, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create(day: 2, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create(day: 3, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create(day: 4, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create(day: 5, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create(day: 6, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create(day: 7, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')

