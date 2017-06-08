class Menu < ActiveRecord::Base

  has_many :meals
  has_many :menu_recipes
  has_many :recipes, through: :menu_recipes

end
