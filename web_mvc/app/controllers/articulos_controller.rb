class ArticulosController < ApplicationController
	
	before_action :authenticate_usuario!,except: [:show,:index]

	def index
		@articulo = Articulo.all
	end	

	def show
		@articulo = Articulo.find(params[:id])
		@articulo.update_numero_visitas
	end

	def new 
		 @articulo = Articulo.new
	end

	def create 
		@articulo = current_usuario.articulos.new(articulo_params)
		
		if @articulo.save
			redirect_to @articulo
		else
			render :new	
		end			
	end

	def destroy
		@articulo = Articulo.find(params[:id])
		@articulo.destroy
		redirect_to '/articulos'
	end

	def edit 
		@articulo = Articulo.find(params[:id])

	end 

	def update 
		@articulo = Articulo.find(params[:id])
		if @articulo.update(articulo_params)
			redirect_to "/articulos"
		else
			render :edit
		end		
	end	

	private 

	def articulo_params
		params.require(:articulo).permit(:titulo,:cuerpo)
	end	
end
