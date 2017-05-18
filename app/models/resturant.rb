class Resturant < ActiveRecord::Base
  has_many :menus
  has_many :dishes, :through => :menus
  has_many :inventories
  has_many :ingredients, :through => :inventories
end
