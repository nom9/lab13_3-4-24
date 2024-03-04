require "test_helper"

class MThreadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get m_threads_index_url
    assert_response :success
  end

  test "should get show" do
    get m_threads_show_url
    assert_response :success
  end
end
