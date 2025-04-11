require "test_helper"

class BookstoreThinkorControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bookstore_thinkor_new_url
    assert_response :success
  end

  test "should get create" do
    get bookstore_thinkor_create_url
    assert_response :success
  end

  test "should get index" do
    get bookstore_thinkor_index_url
    assert_response :success
  end

  test "should get show" do
    get bookstore_thinkor_show_url
    assert_response :success
  end

  test "should get edit" do
    get bookstore_thinkor_edit_url
    assert_response :success
  end

  test "should get update" do
    get bookstore_thinkor_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bookstore_thinkor_destroy_url
    assert_response :success
  end
end
