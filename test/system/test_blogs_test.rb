require "application_system_test_case"

class TestBlogsTest < ApplicationSystemTestCase
  setup do
    @test_blog = test_blogs(:one)
  end

  test "visiting the index" do
    visit test_blogs_url
    assert_selector "h1", text: "Test Blogs"
  end

  test "creating a Test blog" do
    visit test_blogs_url
    click_on "New Test Blog"

    fill_in "Body", with: @test_blog.body
    fill_in "Title", with: @test_blog.title
    click_on "Create Test blog"

    assert_text "Test blog was successfully created"
    click_on "Back"
  end

  test "updating a Test blog" do
    visit test_blogs_url
    click_on "Edit", match: :first

    fill_in "Body", with: @test_blog.body
    fill_in "Title", with: @test_blog.title
    click_on "Update Test blog"

    assert_text "Test blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Test blog" do
    visit test_blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test blog was successfully destroyed"
  end
end
