class Setting < ActiveRecord::Base
  attr_accessible :value

  validates :key, presence: true, uniqueness: true
  validates :value, presence: true, if: :required?

  def required?
    required == true
  end

  def self.get(key)
    where(key: key).first.try(:value)
  end
end
