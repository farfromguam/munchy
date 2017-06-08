class Recipe < ActiveRecord::Base

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :meals

  def cook
    Meal.create(
      recipe: self,
    )
  end

end
