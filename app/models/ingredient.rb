class Ingredient < ActiveRecord::Base
  has_many :meals, dependent: :destroy
  has_many :dishes, :through => :meals
  has_many :inventories, dependent: :destroy
  has_many :resturants, :through => :inventories
  resourcify
end
