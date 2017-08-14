require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  def setup
    @user = users(:jimmy)
    @article = @user.articles.build(title: "Title1", text: "Title 1 test.")
  end

  test "should be valid" do
    assert @article.valid?
  end

  test "user id should be present" do
    @article.user_id = nil
    assert_not @article.valid?
  end
    
  test "title should be present" do
    @article.title = "  "
    assert_not @article.valid?
  end
    
  test "title should be at least 5 characters" do
    @article.title = "a" * 4
    assert_not @article.valid?
  end

  test "order should be most recent first" do
    assert_equal articles(:most_recent), Article.first
  end    
    
end
