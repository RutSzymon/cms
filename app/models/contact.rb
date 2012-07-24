class Contact
  include ActiveModel::Validations
  include ActiveModel::MassAssignmentSecurity

  attr_accessor :name, :email, :topic, :body
  attr_accessible :name, :email, :topic, :body

  validates :email, presence: true
  validates :body, presence: true

  def persisted?
    false
  end
end