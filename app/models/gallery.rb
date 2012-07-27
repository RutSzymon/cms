class Gallery < ActiveRecord::Base
  attr_accessible :description, :permalink, :photo_id, :title
end
