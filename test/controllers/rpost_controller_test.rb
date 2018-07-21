require 'test_helper'

class RpostControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rpost_index_url
    assert_response :success
  end

end
