class Dish < ActiveRecord::Base
  has_many :menus
  has_many :resturants, :through => :menus
  has_many :ingredients
end
