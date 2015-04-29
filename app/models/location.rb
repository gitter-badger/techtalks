class Location < ActiveRecord::Base
  validates_presence_of :title

  belongs_to_many :events
end
