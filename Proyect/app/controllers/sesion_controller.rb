class SesionController < ApplicationController
 
  def iniciarSesion
  	@usr = Usuarios.new
  end

  def login
  	exists = false
  	exists = Usuarios.exists?(:email=>params[:usuarios][:email],:password=>params[:usuarios][:password])
  	
  	if exists != false
  		$usuario = Usuarios.where("email = ?",params[:usuarios][:email]).first()
  		redirect_to "/"
  	else 
  		@usr = Usuarios.new
  		@errors = "Email o password incorrectos"	
  		render :iniciarSesion
  	end
  end	
  
  def cerrarSesion
  	$usuario = nil
  	redirect_to "/"
  end	
  
end
