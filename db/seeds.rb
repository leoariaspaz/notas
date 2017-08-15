# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Categoria.create(descripcion: "Ruby on Rails", habilitado: true)
Categoria.create(descripcion: "Scripts SQL", habilitado: true)
Categoria.create(descripcion: "PHP", habilitado: false)
Categoria.create(descripcion: "Power Builder", habilitado: true)
