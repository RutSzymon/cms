class Setting < ActiveRecord::Base
  attr_accessible :key, :value

  validates :key, presence: true, uniqueness: true

  def find(key)
    where(key: key).first
  end
end
