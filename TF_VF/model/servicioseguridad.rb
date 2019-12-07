require "../model/servicio.rb"
class ServicioSeguridad < Servicio
	attr_accessor :personas
	def initialize(codigo, nombre,habitacion, estado, mes ,personas)
		super(codigo, nombre,habitacion, estado, mes)
		@personas = personas
	end	
	def pago
		return  30 * personas
	end
end