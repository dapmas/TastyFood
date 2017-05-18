class Ingredient < ActiveRecord::Base
  has_many :meals
  has_many :dishes, :through => :meals
  has_many :inventories
  has_many :resturants, :through => :inventories
end
