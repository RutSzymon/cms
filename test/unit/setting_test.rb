require 'test_helper'

class SettingsTest < ActiveSupport::TestCase
  setup do
    @setting = FactoryGirl.build(:setting)
  end

  test "it should save valid object" do
    assert @setting.save
  end

  test "it shouldn't save without key" do
    @setting.key = nil
    assert @setting.invalid?
  end

  test "it should have unique key" do
    @setting.save
    @setting2 = FactoryGirl.build(:setting)
    assert @setting2.invalid?
  end

  test "it shouldn't save without content_type" do
    @setting.content_type = nil
    assert @setting.invalid?
  end

  test "it shouldn't save with incorrect content_type" do
    @setting.content_type = "typ"
    assert @setting.invalid?
  end

  test "it shouldn't save without required" do
    @setting.required = nil
    assert @setting.invalid?
  end

  test "it shouldn't save without value if required = true" do
    @setting.value = nil
    assert @setting.invalid?
  end

  test "it should save without value if required = false" do
    @setting.required = false
    @setting.value = nil
    assert @setting.save
  end

  test "it shouldn't save with incorrect phone number value" do
    @setting.content_type = "phone"
    @setting.value = "123 456 xxx"
    assert @setting.invalid?
  end

  test "it shouldn't save with incorrect email value" do
    @setting.content_type = "email"
    @setting.value = "example.example.com"
    assert @setting.invalid?
  end

  test "it should find the correct value" do
    @setting.save
    @setting = Setting.get("klucz")
    assert_equal "wartosc", @setting
  end

  test "if there isn't suitable key it should be nil" do
    @setting.save
    @setting = Setting.get("test")
    assert_equal nil, @setting
  end

end
