require 'test_helper'

class PicnicarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get picnicars_index_url
    assert_response :success
  end

end
