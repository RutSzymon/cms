class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def mail(contact)
    @contact = contact
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
  end
end
