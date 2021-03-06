# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Shop.destroy_all
item = Item.create!(title: 'Malboro', price: '8.00', description: 'red', image_url: 'www.truc.com')

shop = Shop.create!(title: 'Alimentation General Italie', adress: '138 avenue d’Italie – 75013', tobacco: true)
shop.operating_hours.create!(day: 1, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create!(day: 2, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create!(day: 3, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create!(day: 4, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create!(day: 5, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create!(day: 6, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create!(day: 7, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')

shop = Shop.create!(title: 'ÉPICERIE DE TENON', adress: '46 rue Pelleport – 75020', tobacco: false)
shop.operating_hours.create!(day: 1, open: '20:00', close: '00:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create!(day: 2, open: '18:00', close: '00:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create!(day: 3, open: '17:00', close: '00:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create!(day: 4, open: '16:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create!(day: 5, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create!(day: 6, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
shop.operating_hours.create!(day: 7, open: '22:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')

shop = Shop.create!(title: 'Libre-service Italie', adress: '190 avenue d’Italie, Paris', tobacco: true)
shop = Shop.create!(title: 'Station-service Avia', adress: '5 boulervard Garibaldi, Paris', tobacco: false)
shop = Shop.create!(title: 'Tôt ou tard: épicerie libre-service', adress: '39 rue Letellier, Paris', tobacco: false)
shop = Shop.create!(title: 'Cocci Market Belgrand', adress: '13 rue Belgrand, Paris', tobacco: true)
shop = Shop.create!(title: 'Supérette Meryam', adress: '3 rue de la Chine, Paris', tobacco: false)
shop = Shop.create!(title: 'Epicerie Aolouze', adress: '5 avenue Gambetta , Paris', tobacco: true)
shop = Shop.create!(title: 'Epicierie Oberkampf', adress: '104 rue Oberkampf , Paris', tobacco: true)
shop = Shop.create!(title: 'Das Paval Alimentation Générale', adress: '71 rue Belleville , Paris', tobacco: false)
shop = Shop.create!(title: '20 rue Jean-Pierre Timbaud', adress: '20 rue Jean-Pierre Timbaud, Paris', tobacco: false)
shop = Shop.create!(title: 'Libre-service Magenta', adress: '5 boulevard Magenta , Paris', tobacco: true)
shop = Shop.create!(title: 'Alimentation Générale Cadet', adress: '8 rue Cadet, Paris', tobacco: true)
shop = Shop.create!(title: 'Alimentation Générale Lafayette', adress: '166 rue Lafayette , Paris', tobacco: true)
shop = Shop.create!(title: 'Le petit marché Max Dormoy', adress: '9 rue Marx Dormoy , Paris', tobacco: false)
shop = Shop.create!(title: 'Alimentation Générale Rochechouart', adress: '15 boulevard Rochechouart, Paris', tobacco: true)
shop = Shop.create!(title: 'Libre-service La Chapelle', adress: '39 rue de la Chapelle , Paris', tobacco: false)
shop = Shop.create!(title: 'Alimentation Omran La Chapelle', adress: '32 rue de La Chapelle, Paris', tobacco: false)
shop = Shop.create!(title: 'Alimentation générale Custine', adress: '13 rue Custine, Paris', tobacco: true)
shop = Shop.create!(title: 'Le mini-marché Clichy', adress: '11 boulevard de Clichy, Paris', tobacco: true)
shop = Shop.create!(title: 'Super Market Clichy', adress: '33 boulevard Clichy , Paris', tobacco: false)
shop = Shop.create!(title: 'Mini-Marché Clichy', adress: '60 boulevard de Clichy, Paris', tobacco: false)
