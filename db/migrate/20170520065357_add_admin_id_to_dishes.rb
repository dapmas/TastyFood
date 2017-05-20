class AddAdminIdToDishes < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :admin_id, :integer
  end
end
