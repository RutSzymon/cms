class Gallery < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history], slug_column: :permalink

  has_many :photos
  has_one :main_photo, class_name: "Photo", foreign_key: "photo_id"

  attr_accessible :description, :permalink, :title

  validates :title, presence: true
end
