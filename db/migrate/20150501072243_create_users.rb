class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :surname
      t.string :twitter_url
      t.string :github_url
      t.datetime :dob

      t.timestamps null: false
    end
  end
end
