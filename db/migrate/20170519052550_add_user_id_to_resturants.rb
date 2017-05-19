class AddUserIdToResturants < ActiveRecord::Migration[5.0]
  def change
    add_column :resturants, :user_id, :integer
  end
end
