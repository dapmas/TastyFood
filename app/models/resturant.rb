class Resturant < ActiveRecord::Base
  has_many :menus
  has_many :dishes, :through => :menus
  has_many :ingredients
end
