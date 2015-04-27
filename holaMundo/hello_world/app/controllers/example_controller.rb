class ExampleController < ApplicationController
  def form
  	@nombre = params[:nombre_usuario]
  	@ejemplo = Example.create(nombre: @nombre)
  	@nombres = Example.order("nombre DESC")
  end
end
