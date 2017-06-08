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


spaghetti = Recipe.create(
  name: "spaghetti",
  description: "Noodles in sauce",
  directions: "cook the noodles, then put them in the sauce",
  servings: 6,
  time_prep:  1.hour,
  time_cook: 10.minutes,
  time_cleanup: 15.minutes,
)
spaghetti.recipe_ingredients << RecipeIngredient.create(
  quantity: 10,
  unit: "oz",
  ingredient: Ingredient.find_or_create_by(
    name: "spaghetti noodles"
  )
)
spaghetti.recipe_ingredients << RecipeIngredient.create(
  quantity: 20,
  unit: "oz",
  ingredient: Ingredient.find_or_create_by(
    name: "red sauce"
  )
)
