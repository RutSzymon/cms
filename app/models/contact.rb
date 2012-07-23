class Contact
  include ActiveModel::Validations

  attr_accessor :name, :email, :topic, :body
  attr_accessible :name, :email, :topic, :body

end