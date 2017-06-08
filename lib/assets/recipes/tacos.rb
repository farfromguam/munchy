# this is the Recipe.
tacos = Recipe.create(
  name: "T is for TACOS",
  description: "seasoned meat in shell or torilla",
  directions: "Cook ground beef in skillet over med-high heat until brown, drain excess fat, add taco seasoning and ¼ c water, bring to a boil and reduce heat to low, Simmer for 5 minutes, While meat is cooking, place taco shells in oven for 5 mintues. Place black beans in small pot to warm. Place meat into shell or tortilla, sprinkle cheese and add sour cream or salsa and Enjoy.",
  servings: 6,
  time_prep:  5.minutes,
  time_cook: 15.minutes,
  time_cleanup: 15.minutes,
)
# Add as many recipe_ingredients as needed.
tacos.recipe_ingredients << RecipeIngredient.create(
  quantity: 1 ,
  unit: "pound",
  ingredient: Ingredient.find_or_create_by(
    name: "ground beef"
  )
)
tacos.recipe_ingredients << RecipeIngredient.create(
  quantity: 1,
  unit: "package",
  ingredient: Ingredient.find_or_create_by(
    name: "taco seasoning"
  )
)
tacos.recipe_ingredients << RecipeIngredient.create(
  quantity: 1/4,
  unit: "cup",
  ingredient: Ingredient.find_or_create_by(
    name: "water"
  )
)
tacos.recipe_ingredients << RecipeIngredient.create(
  quantity: 16,
  unit: "oz",
  ingredient: Ingredient.find_or_create_by(
    name: "black beans"
  )
)
tacos.recipe_ingredients << RecipeIngredient.create(
  quantity: 8,
  unit: "oz",
  ingredient: Ingredient.find_or_create_by(
    name: "shredded sharp cheese"
  )
)
tacos.recipe_ingredients << RecipeIngredient.create(
  quantity: 1,
  unit: "jar",
  ingredient: Ingredient.find_or_create_by(
    name: "salsa"
  )
)
tacos.recipe_ingredients << RecipeIngredient.create(
  quantity: 8,
  unit: "oz",
  ingredient: Ingredient.find_or_create_by(
    name: "sour cream"
  )
)
