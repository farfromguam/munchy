class RecipeIngredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient

  def show
    puts "#{self.quantity} #{self.unit} #{self.ingredient.name}"
  end

end
