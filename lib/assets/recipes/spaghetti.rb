# this is the Recipe.
spaghetti = Recipe.create(
  name: "spaghetti",
  description: "Noodles in sauce",
  directions: "cook the noodles, then put them in the sauce",
  servings: 6,
  time_prep:  1.hour,
  time_cook: 10.minutes,
  time_cleanup: 15.minutes,
)

# Add as many recipe_ingredients as needed.
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
