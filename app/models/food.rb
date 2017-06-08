class Food < ActiveRecord::Base

  has_one :recipe
  has_many :ingredients

end
