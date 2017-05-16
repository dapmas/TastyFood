class Ingredient < ActiveRecord::Base
  has_many :meals
  has_many :dishes, :through => :meals
end
