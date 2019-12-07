class Residente
	attr_accessor :dni, :nombre, :habitacion
	def initialize(dni, nombre, habitacion)
		@dni, @nombre, @habitacion = dni, nombre, habitacion
	end
end

