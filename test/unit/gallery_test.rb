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

  test "if photo_id isn't nil, it should show this photo" do
    @photo = FactoryGirl.create(:photo, gallery: @gallery)
    @photo2 = FactoryGirl.create(:photo, gallery: @gallery)
    @gallery.photo_id = 1
    assert_equal @gallery.main_photo, @photo
  end

  test "if photo_id is nil, it should show randomly photo" do
    @photo = FactoryGirl.create(:photo, gallery: @gallery)
    @photo2 = FactoryGirl.create(:photo, gallery: @gallery)
    @table = []
    @gallery.photo_id = nil
    10.times do
      @table << @gallery.main_photo
    end
    assert @table.uniq.size != 1
  end
end
