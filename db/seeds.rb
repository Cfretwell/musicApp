# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)

u1 = User.create(email_address: 'demo', password: 'password')

b1 = Band.create(name: 'Queen')
b2 = Band.create(name: 'Tom Petty')
b3 = Band.create(name: 'Rush')

a1 = Album.create(band_id: b1.id, title: 'Killer Queen', year: '1/1/2020')
a2 = Album.create(band_id: b1.id, title: 'Best Of', year: '1/3/1990')
a3 = Album.create(band_id: b2.id, title: 'Somthing here', year: '9/5/1984')

