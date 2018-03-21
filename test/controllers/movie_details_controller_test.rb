require 'test_helper'

class MovieDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get movie_details_show_url
    assert_response :success
  end

end
