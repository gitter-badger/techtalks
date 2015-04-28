class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :title
      t.string :slug
      t.text :description
      t.string :website_url
      t.string :youtube_url
      t.string :twitter_url
      t.string :facebook_url
      t.string :meetup_url

      t.timestamps null: false
    end
    add_index :groups, :slug, unique: true
  end
end
