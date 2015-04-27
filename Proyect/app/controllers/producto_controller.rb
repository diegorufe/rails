class ProductoController < ApplicationController
  def producto
  	@producto = Productos.find(params[:producto])
  end
end
