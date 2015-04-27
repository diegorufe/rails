require 'test_helper'

class DerechosControllerTest < ActionController::TestCase
  test "should get derechos" do
    get :derechos
    assert_response :success
  end

end
