require 'test_helper'

class ProductosControllerTest < ActionController::TestCase
  test "should get productos" do
    get :productos
    assert_response :success
  end

end
