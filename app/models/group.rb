class Group < ActiveRecord::Base
  has_many :events, dependent: :destroy

  validates_presence_of :title
  validates_uniqueness_of :slug

  extend FriendlyId
  friendly_id :title, use: :slugged
end
