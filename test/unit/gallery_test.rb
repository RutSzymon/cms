require 'test_helper'

class GalleryTest < ActiveSupport::TestCase

  setup do
    @gallery = FactoryGirl.build(:gallery)
  end

  test "it should save valid object" do
    assert @gallery.save
  end

  test "it shouldn't save without title" do
    @gallery.title = nil
    assert @gallery.invalid?
  end

  test "it should save without description" do
    @gallery.description = nil
    assert @gallery.save
  end

  test "it shouldn't save without permalink" do
    @gallery.permalink = nil
    assert @gallery.invalid?
  end

  test "it should have many photos" do
    @photo = FactoryGirl.create(:photo, gallery: @gallery)
    assert_equal [@photo], @gallery.photos
  end
end
