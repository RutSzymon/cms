#encoding: utf-8
require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  setup do
    @article = FactoryGirl.build(:article, title: "Żółwi tytuł 2")
  end

  test "it should save valid object" do
    assert @article.save
  end

  test "it shouldn't save article without title" do
    @article.title = nil
    assert @article.invalid?
  end

  test "it shouldn't save without body" do
    @article.body = nil
    assert @article.invalid?
  end

  test "permalink should be generated automatically" do
    @article.save
    assert_equal "zolwi-tytul-2", @article.permalink
  end

end
