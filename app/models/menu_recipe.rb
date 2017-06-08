class MenuRecipe < ActiveRecord::Base
  belongs_to :menu
  belongs_to :recipe

  def cook
    # check if there are the ingredients,
    puts "cooking #{self.recipe.name}. Yum!"

    self.recipe.servings.times do |x|
      self.menu.meals << self.recipe.cook
    end
  end

end
