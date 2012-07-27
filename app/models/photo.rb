class Photo < ActiveRecord::Base
  belongs_to :gallery

  attr_accessible :description, :photo, :title

  validates :title, presence: true

  mount_uploader :photo, PhotoUploader
end
