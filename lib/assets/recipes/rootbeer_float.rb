# this is the Recipe.
root_beer_float = Recipe.create(
  name: "RB Float",
  description: "",
  directions: "",
  servings: 1,
  time_prep:  0.minutes,
  time_cook: 1.minutes,
  time_cleanup: 2.minutes,
)

root_beer_float_ingredients = [
  {
    quantity:3,
    unit:"oz",
    ingredient:"vanilla ice cream"
  },
  {
    quantity:10,
    unit:"oz",
    ingredient:"root beer"
  }
]

# Add as many recipe_ingredients as needed.
root_beer_float_ingredients.each do |ingredient|
  root_beer_float.recipe_ingredients << RecipeIngredient.create(
    quantity: ingredient[:quantity],
    unit: ingredient[:unit],
    ingredient: Ingredient.find_or_create_by(
      name: ingredient[:ingredient]
    )
  )
end
