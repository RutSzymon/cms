class Setting < ActiveRecord::Base
  attr_accessible :key, :value

  validates :key, presence: true, uniqueness: true

  def self.get(key)
    where(key: key).first.try(:value)
  end
end
