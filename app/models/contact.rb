class Contact
  include ActiveModel::Validations
  include ActiveModel::MassAssignmentSecurity
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :topic, :body
  attr_accessible :name, :email, :topic, :body

  validates :email, presence: true, format: {with: /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i}
  validates :body, presence: true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end