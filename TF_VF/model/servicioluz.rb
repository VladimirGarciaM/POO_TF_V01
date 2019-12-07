require "../model/servicio.rb"
class ServicioLuz < Servicio
	attr_accessor :vatios
	def initialize(codigo, nombre,residente, estado, mes, vatios)
		super(codigo, nombre,residente, estado, mes)
		@vatios = vatios
	end	
	def pago
		return 50 * vatios
	end
end