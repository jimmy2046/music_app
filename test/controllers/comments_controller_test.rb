require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @comment = comments(:one)      
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'Comment.count' do
      post articles_path, params: { comment: { commenter: "Jimmy Chong", body: "Jimmy is typing comment number one."  } }
    end
    assert_redirected_to login_url
  end    
    
  test "should redirect destroy when not logged in" do
    assert_no_difference 'Comment.count' do
      delete article_path(@comment)
    end
    assert_redirected_to login_url
  end 
    
  test "should redirect destroy for wrong article" do
    log_in_as(users(:jimmy))
    comment = comments(:michael)
    assert_no_difference 'Comment.count' do
      delete article_path(comment)
    end
    assert_redirected_to root_url
  end    
    
end
