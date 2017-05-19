class Dish < ActiveRecord::Base
  has_many :menus, dependent: :destroy
  has_many :resturants, :through => :menus
  has_many :meals, dependent: :destroy
  has_many :ingredients, :through => :meals
  belongs_to :user
  resourcify
end
