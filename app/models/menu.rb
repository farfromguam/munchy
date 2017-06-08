class Menu < ActiveRecord::Base

  has_many :menu_meals
  has_many :meals, through: :menu_meals
  has_many :menu_recipes
  has_many :recipes, through: :menu_recipes

end
