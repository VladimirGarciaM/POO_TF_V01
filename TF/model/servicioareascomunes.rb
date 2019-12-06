require "../model/servicio.rb"
class ServicioAreasComunes < Servicio	
	def initialize(codigo, nombre,residente, estado, mes)
		super(codigo, nombre,residente, estado, mes)
	end	
	def pago
		return 900
	end
end