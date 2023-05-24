class RemoveAddressToRestaurants < ActiveRecord::Migration[7.0]
  def change
    remove_column :Restaurants, :adress
  end
end
