# this is the Recipe.
spaghetti = Recipe.create(
  name: "Spaghetti Especial",
  description: "Noodles in sauce",
  directions: "Bring pot of water to boil, Add noodles to boiling water and cook until noodles stick to cabinet, While noodles are cooking, place ground beef in skillet and brown over med-high heat, Add frozen onion/bell pepper mix to meat and sautee, Drain water from noodles and add meat, onion/bell pepper mix, sauce, mushrooms, and black olives,Stir and Serve",
  servings: 6,
  time_prep:  5.minutes,
  time_cook: 15.minutes,
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
spaghetti.recipe_ingredients << RecipeIngredient.create(
  quantity: 1,
  unit: "package",
  ingredient: Ingredient.find_or_create_by(
    name: "frozen onion/bell pepper mix"
  )
)
spaghetti.recipe_ingredients << RecipeIngredient.create(
  quantity: 1,
  unit: "pound",
  ingredient: Ingredient.find_or_create_by(
    name: "ground beef"
  )
)
spaghetti.recipe_ingredients << RecipeIngredient.create(
  quantity: 4,
  unit: "oz",
  ingredient: Ingredient.find_or_create_by(
    name: "canned mushrooms"
  )
)
spaghetti.recipe_ingredients << RecipeIngredient.create(
  quantity: 4,
  unit: "oz",
  ingredient: Ingredient.find_or_create_by(
    name: "black olives"
  )
)
