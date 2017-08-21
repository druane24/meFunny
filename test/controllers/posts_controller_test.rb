require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get posts_all_url
    assert_response :success
  end

  test "should get funny" do
    get posts_funny_url
    assert_response :success
  end

  test "should get awww" do
    get posts_awww_url
    assert_response :success
  end

  test "should get satisfying" do
    get posts_satisfying_url
    assert_response :success
  end

  test "should get knowledge" do
    get posts_knowledge_url
    assert_response :success
  end

  test "should get nature" do
    get posts_nature_url
    assert_response :success
  end

  test "should get sports" do
    get posts_sports_url
    assert_response :success
  end

end
