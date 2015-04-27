class ProductosController < ApplicationController
  def productos
  	@productos = Productos.where("idCategoria = ?",params[:categoria])
  end
end
