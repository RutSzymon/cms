class Setting < ActiveRecord::Base
  attr_accessible :value

  validates :key, presence: true, uniqueness: true
  validates :content_type, presence: true, inclusion: ["email", "phone", "string", "text"]
  validates :required, inclusion: [true, false]
  validates :value, presence: true, if: :required?

  validate :check_value

  def check_value
    case content_type
    when "phone"
      phone_validation
    when "email"
      email_validation
    end
  end

  def required?
    required == true
  end

  def self.get(key)
    where(key: key).first.try(:value)
  end

  private
  def phone_validation
    errors.add(:value, I18n.t("setting.this_isnt_phone_number")) unless value.match(/^(\+?)(\d|\s|\-)+$/)
  end

  def email_validation
    errors.add(:value, I18n.t("setting.this_isnt_email")) unless value.match(/^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i)
  end
end
