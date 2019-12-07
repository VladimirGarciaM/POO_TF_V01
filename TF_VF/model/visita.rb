require 'date'
require "../model/residente.rb"
require "../model/visitante.rb"
class Visita
	attr_accessor :codigo, :fecha, :visitante, :habitacion
	def initialize(codigo,fecha,visitante,habitacion)
		@codigo, @fecha, @visitante, @habitacion = codigo,fecha,visitante,habitacion
	end
end

