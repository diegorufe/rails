class HomeController < ApplicationController

  def home
  	@categorias = Categorias.all
  	@productosRecomendados = Productos.where("recomendado = ?",true).limit(3)
  	@productosMasVendidos =  Productos.order("ventas desc").limit(3)
  end
end
