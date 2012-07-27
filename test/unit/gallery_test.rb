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

  test "permalink should be generated automatically" do
    @gallery.save
    assert_equal "tytul-galerii", @gallery.permalink
  end

  test "permalink should remember history" do
    @gallery.save
    @gallery.title = "tytul galerii 2"
    @gallery.save
    assert_equal @gallery, Gallery.find("tytul-galerii-2")
  end

  test "it should have many photos" do
    @photo = FactoryGirl.create(:photo, gallery: @gallery)
    assert_equal [@photo], @gallery.photos
  end
end
