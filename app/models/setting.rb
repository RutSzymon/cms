class Setting < ActiveRecord::Base
  attr_accessible :key, :value

  def find(key)
    where(key: key).first
  end
end
