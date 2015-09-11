class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address_1
      t.string :address_2
      t.string :city
      t.references :state, index: true
      t.string :zip
      t.references :country, index: true
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
