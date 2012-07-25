class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact(contact)
    @contact = contact
    mail(:to => Setting.get("email_receiver"), :subject => "Kontakt")
  end
end
