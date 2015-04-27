require 'test_helper'

class PreciosControllerTest < ActionController::TestCase
  test "should get precios" do
    get :precios
    assert_response :success
  end

end
