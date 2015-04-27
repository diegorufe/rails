class CrearCuentaController < ApplicationController
  
  def crearCuenta
  	@usr = Usuarios.new
  end

  def crear 
  	@usr = Usuarios.new(params[:usuarios].permit(:email,:password,:nombre,:primerApellido,:segundoApellido,:telefono,:direccion))
  	@usr.idRol = 2
  	if @usr.save
      $usuario = @usr
  		redirect_to "/"
  	else
  		 render action: 'crearCuenta'
  	end	
  end	

end
