class Visitante
	attr_accessor :dni, :nombre, :habitacion, :residente
	def initialize(dni, nombre, habitacion, residente)
		@dni, @nombre, @habitacion, @residente = dni, nombre, habitacion, residente
	end
end

