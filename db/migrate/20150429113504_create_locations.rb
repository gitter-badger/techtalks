class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :title
      t.text :description
      t.string :address_line_one
      t.string :address_line_two
      t.string :address_line_three
      t.string :city
      t.string :postcode
      t.string :country

      t.timestamps null: false
    end
  end
end
