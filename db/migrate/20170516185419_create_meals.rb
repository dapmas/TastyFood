class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.integer :dish_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
