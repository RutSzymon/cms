class ContactMailer < ActionMailer::Base

  def contact(contact)
    @contact = contact
    topic = contact.topic unless contact.topic.blank?
    topic ||= Setting.get("default_contact_email_topic")

    mail(:to => Setting.get("email_receiver"), from: Setting.get("email_sender"), subject: topic, reply_to: contact.email)
  end
end
