require 'test_helper'

class SesionControllerTest < ActionController::TestCase
  test "should get iniciarSesion" do
    get :iniciarSesion
    assert_response :success
  end

end
