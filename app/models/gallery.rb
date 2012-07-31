class Gallery < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history], slug_column: :permalink

  has_many :photos
  has_one :main_photo, class_name: "Photo", foreign_key: "photo_id"

  attr_accessible :description, :permalink, :title

  validates :title, presence: true

  paginates_per 20

  def main_photo
    self[:main_photo] || photos.random.first
  end
end
