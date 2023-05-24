class RemoveColumnReviews < ActiveRecord::Migration[7.0]
  def change
    remove_reference :reviews, :restaurant_id, foreign_key: true, index: true
  end
end
