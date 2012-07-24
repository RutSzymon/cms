require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  setup do
    @contact = FactoryGirl.build(:contact)
  end

  test "factory should be valid" do
    assert@contact.valid?
  end

  test "it shouldn't be valid without email" do
    @contact.email = nil
    assert @contact.invalid?
  end

  test "it shouldn't be valid without body" do
    @contact.body = nil
    assert @contact.invalid?
  end

  test "it shouldn't be valid with wrong email" do
    @contact.email = "example.example.com"
    assert @contact.invalid?
  end

end