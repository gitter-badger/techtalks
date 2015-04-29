class Event < ActiveRecord::Base
  validates_presence_of :title
  belongs_to :group
  has_one :location
end
