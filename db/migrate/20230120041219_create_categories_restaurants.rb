class CreateCategoriesRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_restaurants do |t|
      t.integer :category_id
      t.integer :restaurant_id
    end
  end
end
