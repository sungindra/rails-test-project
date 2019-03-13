require 'test_helper'

class TestBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_blog = test_blogs(:one)
  end

  test "should get index" do
    get test_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_test_blog_url
    assert_response :success
  end

  test "should create test_blog" do
    assert_difference('TestBlog.count') do
      post test_blogs_url, params: { test_blog: { body: @test_blog.body, title: @test_blog.title } }
    end

    assert_redirected_to test_blog_url(TestBlog.last)
  end

  test "should show test_blog" do
    get test_blog_url(@test_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_blog_url(@test_blog)
    assert_response :success
  end

  test "should update test_blog" do
    patch test_blog_url(@test_blog), params: { test_blog: { body: @test_blog.body, title: @test_blog.title } }
    assert_redirected_to test_blog_url(@test_blog)
  end

  test "should destroy test_blog" do
    assert_difference('TestBlog.count', -1) do
      delete test_blog_url(@test_blog)
    end

    assert_redirected_to test_blogs_url
  end
end
