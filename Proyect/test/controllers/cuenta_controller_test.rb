require 'test_helper'

class CuentaControllerTest < ActionController::TestCase
  test "should get cuenta" do
    get :cuenta
    assert_response :success
  end

end
