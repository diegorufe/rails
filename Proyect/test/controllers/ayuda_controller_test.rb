require 'test_helper'

class AyudaControllerTest < ActionController::TestCase
  test "should get ayuda" do
    get :ayuda
    assert_response :success
  end

end
