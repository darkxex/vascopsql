# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

usuario = Admin.new
usuario.email  = 'admin@admin.cl'
usuario.password ='1234567'
usuario.password_confirmation = '1234567'
usuario.save