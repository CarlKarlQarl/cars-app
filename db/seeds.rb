# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ford = Make.create(name:"Ford")
toyota = Make.create(name:"Toyota")
honda = Make.create(name:"Honda")

f150 = Model.create(name:"F-150", year: 2011, make:ford)
focus = Model.create(name:"Focus", year: 2015, make:ford)

tundra = Model.create(name:"Tundra", year:2019, make:toyota)
camry = Model.create(name:"Camry", year:2012, make:toyota)

accord = Model.create(name:"Accord", year:1997, make:honda)
civic = Model.create(name:"Civic", year:1994, make:honda)