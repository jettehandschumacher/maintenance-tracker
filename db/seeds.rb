# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require...

User.destroy_all


puts "Creating users..."
jette = User.create!(email: "jette@test.com", password: "123456", first_name: "jette", last_name: 'handschuamcher')
puts "Creating users..."
ziggy = User.create!(email: "ziggy@test.com", password: "123456", first_name: "dziugas", last_name: "bartkevicius", technician: true)
