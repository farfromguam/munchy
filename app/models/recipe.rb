class Recipe < ActiveRecord::Base

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def cook
    # check if there are the ingredients,
    # cook
    # add to the menu, as a meal
  end

end
