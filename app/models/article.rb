class Article < ActiveRecord::Base
  attr_accessible :body, :permalink, :title
end
