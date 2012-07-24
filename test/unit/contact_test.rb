require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  setup do
    @contact = FactoryGirl.build(:contact)
  end

  test "it shouldn't be valid without email" do
    @contact.email = nil
    assert @contact.invalid?
  end

  test "it shouldn't be valid without body" do
    @contact.body = nil
    assert @contact.invalid?
  end

end