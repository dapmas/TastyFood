class Ingredient < ApplicationRecord
  belongs_to :dish
  belongs_to :resturant
end
