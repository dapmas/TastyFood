class Dish < ActiveRecord::Base
  belongs_to :resturant
  has_many :ingredients
end
