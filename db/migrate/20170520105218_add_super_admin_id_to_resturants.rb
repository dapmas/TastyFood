class AddSuperAdminIdToResturants < ActiveRecord::Migration[5.0]
  def change
    add_column :resturants, :super_admin_id, :integer
  end
end
