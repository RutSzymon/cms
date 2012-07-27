require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  setup do
    @photo = FactoryGirl.build(:photo)
  end

  test "it should save valid object" do
    assert @photo.save
  end

  test "it shouldn't save without title" do
    @photo.title = nil
    assert @photo.invalid?
  end

  test "it should save without description" do
    @photo.description = nil
    assert @photo.save
  end

  test "it should belong to gallery" do
    gallery = FactoryGirl.create(:gallery)
    @photo.gallery = gallery
    assert_equal gallery, @photo.gallery
  end
end
