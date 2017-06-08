# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




5.times do |x|
  User.create(
    username: Faker::Internet.user_name
  )
end


# import all the recipes!!!
Dir.glob('lib/assets/recipes/*.rb') do |rb_file|
  # do work on files ending in .rb in the desired directory
  load rb_file
end
