require 'test_helper'

class AcercaControllerTest < ActionController::TestCase
  test "should get acerca" do
    get :acerca
    assert_response :success
  end

end
