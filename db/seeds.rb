# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.all.map(&:destroy)
5.times do |i|
  s = Student.create(
    name: "star #{i}", 
    password: "asdfasdf",
    password_confirmation: "asdfasdf"
  )
  puts s
end
