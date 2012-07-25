class ContactMailer < ActionMailer::Base

  def contact(contact)
    @contact = contact
    mail(:to => Setting.get("email_receiver"), from: contact.email, subject: contact.topic)
  end
end
