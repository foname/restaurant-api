class CreateRestaurantsDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants_dishes do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.references :dish, null: false, foreign_key: true

      # t.timestamps
    end
  end
end
