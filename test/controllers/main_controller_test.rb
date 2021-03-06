require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get game" do
    get main_game_url
    assert_response :success
  end

end
