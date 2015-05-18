class Group < ActiveRecord::Base
  has_many :events, dependent: :destroy

  validates_presence_of :title
  validates_uniqueness_of :slug

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_attached_file :logo, styles: {
    medium: "300x300>",
    thumb: "100x100>"
  }, default_url: "/images/:style/missing.png"

  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
end
