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

  test "it should save without value" do
    @setting.value = nil
    assert @setting.save
  end
end
