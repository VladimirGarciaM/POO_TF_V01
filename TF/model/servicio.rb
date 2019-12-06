class Servicio	
	attr_accessor :codigo, :nombre, :residente, :estado, :mes
	def initialize(codigo, nombre, residente, estado, mes)
		@codigo, @nombre, @residente, @estado, @mes = codigo, nombre, residente, estado, mes
	end	
	def pago
	end	
end