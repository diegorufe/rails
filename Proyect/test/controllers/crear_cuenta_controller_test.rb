require 'test_helper'

class CrearCuentaControllerTest < ActionController::TestCase
  test "should get crearCuenta" do
    get :crearCuenta
    assert_response :success
  end

end
