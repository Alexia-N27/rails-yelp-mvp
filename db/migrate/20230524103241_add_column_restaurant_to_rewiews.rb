class AddColumnRestaurantToRewiews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :restaurant, foreign_key: true, index: true
  end
end
