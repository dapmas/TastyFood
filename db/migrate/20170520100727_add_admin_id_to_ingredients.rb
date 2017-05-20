class AddAdminIdToIngredients < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :admin_id, :integer
  end
end
