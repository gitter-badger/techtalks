class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.integer :location_id
      t.datetime :start_time
      t.datetime :endtime

      t.timestamps null: false
    end
  end
end
