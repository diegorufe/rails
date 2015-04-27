require 'test_helper'

class ProductoControllerTest < ActionController::TestCase
  test "should get producto" do
    get :producto
    assert_response :success
  end

end
