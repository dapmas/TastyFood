class Inventory < ApplicationRecord
  belongs_to :resturant
  belongs_to :ingredient
end
