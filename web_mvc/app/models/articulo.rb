class Articulo < ActiveRecord::Base
	belongs_to :usuario
	validates :titulo,presence:true
	validates :cuerpo,presence:true, length:{minimum: 20}
	before_save :set_numero_visitas 

	def update_numero_visitas
		self.save if self.numero_visitas.nil?
		self.update(numero_visitas: self.numero_visitas + 1)
	end	

	private 

	def set_numero_visitas
		self.numero_visitas ||= 0
	end
end
