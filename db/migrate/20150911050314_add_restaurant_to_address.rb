class AddRestaurantToAddress < ActiveRecord::Migration
  def change
    add_reference :addresses, :restaurant, index: true, foreign_key: true
  end
end
