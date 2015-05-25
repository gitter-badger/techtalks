class Rsvp < ActiveRecord::Base
  validates_presence_of :event, :user
  belongs_to :event
  belongs_to :user

  scope :attending, -> { where(attending: true) }
end
