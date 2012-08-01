class Photo < ActiveRecord::Base
  belongs_to :gallery

  attr_accessible :description, :photo, :title, :gallery_id

  mount_uploader :photo, PhotoUploader

  validates :title, presence: true
  validates :photo, presence: true, integrity: true

  delegate :url, to: :photo

  scope :random, order("random();")
end
