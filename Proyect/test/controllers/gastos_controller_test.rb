require 'test_helper'

class GastosControllerTest < ActionController::TestCase
  test "should get gastos" do
    get :gastos
    assert_response :success
  end

end
