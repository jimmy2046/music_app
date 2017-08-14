require 'test_helper'

class CommentTest < ActiveSupport::TestCase
            
  def setup
    @user = users(:jimmy)
    @article = @user.articles.build(title: "Title1", text: "Title 1 test.")
    @comment = @user.articles.first.comments.build(commenter: "Jimmy", body: "Test comment body", user_id: users(:jimmy).id)      
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "commenter should be present" do
    @comment.commenter = nil
    assert_not @comment.valid?
  end    
        
  test "body should be present" do
    @comment.body = " "
    assert_not @comment.valid?
  end    
        
  test "body should be at least 5 characters" do
    @comment.body = "a" * 4
    assert_not @comment.valid?
  end
    
  test "article id should be present" do
    @comment.article_id = nil
    assert_not @comment.valid?      
  end
    
  test "user id should be present" do
    @comment.user_id = nil
    assert_not @comment.valid?
  end
    
end
