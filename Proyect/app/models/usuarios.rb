class Usuarios < ActiveRecord::Base
	validates_uniqueness_of :email,message: "Ya existe el email"
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" },presence: {message: "No puede estar vacio"}
	validates :password ,presence: true , confirmation: true
	validates :nombre ,presence: true , confirmation: true
	validates :primerApellido ,presence:{message: "No puede estar vacio"}
	validates :segundoApellido ,presence: {message: "No puede estar vacio"}
	validates :telefono ,presence: {message: "No puede estar vacio"}, confirmation: true,numericality: { only_integer: true,message: "Solo numeros enteros" }
	validates :direccion ,presence:  {message: "No puede estar vacio"}
end	