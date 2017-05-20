class Resturant < ActiveRecord::Base
  has_many :menus, dependent: :destroy
  has_many :dishes, :through => :menus
  has_many :inventories, dependent: :destroy
  has_many :ingredients, :through => :inventories
  resourcify
end
