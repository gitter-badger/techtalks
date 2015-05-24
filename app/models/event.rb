class Event < ActiveRecord::Base
  belongs_to :group
  has_one :location
  has_many :rsvps

  validates_presence_of :title, :group_id

  extend FriendlyId
  friendly_id :title, use: :slugged
end
