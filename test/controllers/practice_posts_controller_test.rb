require "test_helper"

class PracticePostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @practice_post = practice_posts(:one)
  end

  test "should get index" do
    get practice_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_practice_post_url
    assert_response :success
  end

  test "should create practice_post" do
    assert_difference('PracticePost.count') do
      post practice_posts_url, params: { practice_post: {  } }
    end

    assert_redirected_to practice_post_url(PracticePost.last)
  end

  test "should show practice_post" do
    get practice_post_url(@practice_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_practice_post_url(@practice_post)
    assert_response :success
  end

  test "should update practice_post" do
    patch practice_post_url(@practice_post), params: { practice_post: {  } }
    assert_redirected_to practice_post_url(@practice_post)
  end

  test "should destroy practice_post" do
    assert_difference('PracticePost.count', -1) do
      delete practice_post_url(@practice_post)
    end

    assert_redirected_to practice_posts_url
  end
end
