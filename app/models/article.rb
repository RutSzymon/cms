class Article < ActiveRecord::Base
  attr_accessible :body, :permalink, :summary, :title

  validates :title, presence: true
  validates :summary, presence: true

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history], slug_column: :permalink
end
