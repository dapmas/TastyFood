class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.integer :dish_id
      t.integer :resturant_id

      t.timestamps
    end
  end
end
