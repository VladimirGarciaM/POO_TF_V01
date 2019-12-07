require "../model/servicio.rb"
class ServicioAgua < Servicio
	attr_accessor :consumo
	def initialize(codigo, nombre, residente, estado, mes, consumo)
		super(codigo, nombre, residente, estado, mes)
		     @consumo = consumo
	end
	def pago
		return 20 * consumo
	end
end