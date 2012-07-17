require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  setup do
    @article = FactoryGirl.build(:article)
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

  test "it shouldn't save without permalink" do
    @article.permalink = nil
    assert @article.invalid?
  end

end
