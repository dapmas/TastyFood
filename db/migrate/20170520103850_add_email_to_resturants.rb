class AddEmailToResturants < ActiveRecord::Migration[5.0]
  def change
    add_column :resturants, :email, :string
  end
end
