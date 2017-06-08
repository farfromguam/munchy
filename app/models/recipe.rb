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
    puts "#{self.name} - #{self.description}"
    puts "INGREDIENTS:"
    self.recipe_ingredients.each_with_index do |recipe_ingredient|
      recipe_ingredient.show
    end
    puts "DIRECTIONS:"
    puts "#{self.directions}"
  end

end
