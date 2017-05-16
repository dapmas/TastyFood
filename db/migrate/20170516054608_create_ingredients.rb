class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :dish_id
      t.integer :resturant_id

      t.timestamps
    end
  end
end
