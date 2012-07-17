class Article < ActiveRecord::Base
  attr_accessible :body, :permalink, :title

  validates :title, presence: true
  validates :body, presence: true

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history], slug_column: :permalink
end
