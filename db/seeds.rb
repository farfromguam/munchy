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
  servings: 6
)
spaghetti.recipe_ingredients << RecipeIngredient.new(
  quantity: 10,
  unit: "oz",
  ingredient: Ingredient.find_or_create_by(
    name: "spaghetti noodles"
  )
)
spaghetti.recipe_ingredients << RecipeIngredient.new(
  quantity: 20,
  unit: "oz",
  ingredient: Ingredient.find_or_create_by(
    name: "red sauce"
  )
)
