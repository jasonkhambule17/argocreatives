require 'test_helper'

class CreativesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get creatives_index_url
    assert_response :success
  end

end
