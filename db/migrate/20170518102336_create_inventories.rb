class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
      t.integer :resturant_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
