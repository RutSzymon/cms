#encoding: utf-8
require "test_helper"

class ContactMailerTest < ActionMailer::TestCase
  setup do
    @contact = FactoryGirl.build(:contact)
    @setting = FactoryGirl.create(:setting, key: "email_receiver", value: @contact.email)
    @email = ContactMailer.contact(@contact)
  end

  test "it should got queued" do
    @email.deliver
    assert !ActionMailer::Base.deliveries.empty?
  end

  test "it should contain correct email address" do
    assert_equal [@contact.email], @email.to
  end

  test "the topic and the subject should have the same content" do
    assert_equal @contact.topic, @email.subject
  end

  test "it should use a default setting when the topic is a nil" do
    @contact.topic = nil
    @setting = FactoryGirl.create(:setting, key: "default_contact_email_topic", value: "Domyślny temat")
    @email = ContactMailer.contact(@contact)
    assert_equal "Domyślny temat", @email.subject
  end

  test "@contact.body and @email.body should have the same content" do
    @email.deliver
    assert_match /#{@contact.body}/, @email.encoded
  end

end