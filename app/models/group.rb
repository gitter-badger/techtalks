class Group < ActiveRecord::Base
  validates_presence_of :title
  validates_uniqueness_of :slug

  extend FriendlyId
  friendly_id :title, use: :slugged
end
