class Gallery < ActiveRecord::Base
  has_many :photos

  attr_accessible :description, :permalink, :title
end
