class CreateDishesResturantsJoin < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes_resturants, :id => false do |t|
      t.integer :dish_id
      t.integer :resturant_id

    end
  end
end
