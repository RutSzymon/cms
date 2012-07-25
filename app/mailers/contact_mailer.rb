class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def mail(contact)
    @contact = contact
    mail(:to => Setting.find("email_receiver"), :subject => "Kontakt")
  end
end
