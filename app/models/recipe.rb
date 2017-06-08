class Recipe < ActiveRecord::Base

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :meals

  def cook
    Meal.create(
      recipe: self,
    )
  end

  def show
    system('clear')
    puts "#{self.name} - #{self.description}".bold
    puts "INFO:".underline
    puts "serves:  #{self.servings}"
    puts "prep:    #{self.time_prep} seconds"
    puts "cook:    #{self.time_cook} seconds"
    puts "cleanup: #{self.time_cleanup} seconds"
    puts "INGREDIENTS:".underline
    self.recipe_ingredients.each_with_index do |recipe_ingredient|
      recipe_ingredient.show
    end
    puts "DIRECTIONS:".underline
    puts "#{self.directions}"
  end

end
