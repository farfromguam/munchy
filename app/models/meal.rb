class Meal < ActiveRecord::Base

  has_one :recipe
  has_many :ingredients
  belongs_to :menu

  def consume
    self.destroy
  end

end
