require "test_helper"

class HomeThinkorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_thinkors_index_url
    assert_response :success
  end
end
