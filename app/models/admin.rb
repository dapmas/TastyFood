class Admin < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :dishes
  has_many :ingredients
  has_many :resturants
  after_create :assign_default_role

  def assign_default_role
    add_role(:resturant_owner)
  end
end
