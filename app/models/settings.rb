class Settings < ActiveRecord::Base
  # attr_accessible :title, :body

  def find(key)
    where(key: key).first
  end
end
