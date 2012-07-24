#encoding: utf-8
require 'test_helper'

class SiteTest < ActiveSupport::TestCase
  setup do
    @site = FactoryGirl.build(:site, title: "Żółwi tytuł 2")
  end

  test "it should save valid object" do
    assert @site.save
  end

  test "it shouldn't save site without title" do
    @site.title = nil
    assert @site.invalid?
  end

  test "it shouldn't save without body" do
    @site.body = nil
    assert @site.invalid?
  end

  test "permalink should be generated automatically" do
    @site.save
    assert_equal "zolwi-tytul-2", @site.permalink
  end

  test "permalink should remember history" do
    # @site.title = "Żółwi tytuł 2"
    @site.save
    @site.title = "Żółwi tytuł 3"
    @site.save
    assert_equal @site, Site.find("zolwi-tytul-2")
  end
end
