class Menu < ActiveRecord::Base

  has_many :menu_meals
  has_many :meals, through: :menu_meals
  has_many :menu_recipes
  has_many :recipes, through: :menu_recipes


  def show
    self.recipes.all.each_with_index do |recipe, i|
      puts "[#{i}] #{recipe.name}"
      puts "#{recipe.description} serves #{recipe.servings}"
    end
    return
  end

end
