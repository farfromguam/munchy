# this is the Recipe.
chili_dogs = Recipe.create(
  name: "CH CH Chili Dogs",
  description: "hot dog with chili",
  directions: "Preheat oven to 400 degrees, remove 2 hot dogs from package, place on baking tray, place ½ cup of chili on top of hot dogs, place tray in oven and cook for 10-15 minutes or until hot dogs are warmed all the way through, place hot dogs in buns, spoon chili over hot dogs, sprinkle with cheese and consume.",
  servings: 4,
  time_prep:  5.minutes,
  time_cook: 15.minutes,
  time_cleanup: 5.minutes,
)
# Add as many recipe_ingredients as needed.
chili_dogs.recipe_ingredients << RecipeIngredient.create(
  quantity: 1 ,
  unit: " package",
  ingredient: Ingredient.find_or_create_by(
    name: "Nathan’s All Beef Hot dogs"
  )
)
chili_dogs.recipe_ingredients << RecipeIngredient.create(
  quantity: 14 ,
  unit: "oz",
  ingredient: Ingredient.find_or_create_by(
    name: "Wolf brand chili with beans"
  )
)
chili_dogs.recipe_ingredients << RecipeIngredient.create(
  quantity: 1 ,
  unit: "package",
  ingredient: Ingredient.find_or_create_by(
    name: "hot dog buns"
  )
)
chili_dogs.recipe_ingredients << RecipeIngredient.create(
  quantity: 4 ,
  unit: "oz",
  ingredient: Ingredient.find_or_create_by(
    name: "shredded sharp cheese"
  )
)
