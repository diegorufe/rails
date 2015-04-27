class UsuarioSessionsController < ApplicationController
	def new 
		@usuario = Usuario.new
	end

	def create
		if @usuario = login(params[:username],params[:password])
			redirect_back_or_to(posts_path,message:"Login existoso")
		else
			flash.now[:alert] = "Algo salio malo con el login"
			render action: :new
		end
	end

	def destroy
		logout
		rediret_to(:usuarios,message:"Cerrada sesion correctamente")
	end				
end		