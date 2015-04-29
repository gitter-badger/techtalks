class Event < ActiveRecord::Base
  validates_presence_of :title
  has_one :location
end
