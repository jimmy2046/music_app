require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Music App"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end
        
  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "Music App"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"      
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get tweet" do
    get tweet_path
    assert_response :success
    assert_select "title", "Tweet | #{@base_title}"
  end    

  test "should get blog" do
    get articles_path
    assert_response :success
    assert_select "title", "My Blog | #{@base_title}"
  end    
    
end
