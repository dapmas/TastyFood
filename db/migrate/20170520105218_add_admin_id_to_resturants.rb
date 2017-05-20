class AddSuperAdminIdToResturants < ActiveRecord::Migration[5.0]
  def change
    add_column :resturants, :admin_id, :integer
  end
end
