require 'date'

class Habitacion
	attr_accessor :numHab, :piso

	def initialize(numHab, piso)
		@numHab, @piso = numHab, piso
	end

end


class Residente
	attr_accessor :dni, :nombre, :habitacion

	def initialize(dni, nombre, habitacion)
		@dni, @nombre, @habitacion = dni, nombre, habitacion
	end
end


class Visitante
	attr_accessor :dni, :nombre, :habitacion, :residente

	def initialize(dni, nombre, habitacion, residente)
		@dni, @nombre, @habitacion, @residente = dni, nombre, habitacion, residente
	end
end

class Servicio
	attr_accessor :codigo, :nombre, :habitacion, :estado, :mes

	def initialize(codigo, nombre, habitacion, estado, mes)
		@codigo, @nombre, @habitacion, @estado, @mes = codigo, nombre, habitacion, estado, mes
	end
	
end

class ServicioAgua < Servicio
	attr_accessor :consumo

	def initialize(codigo, nombre,habitacion, estado, mes, consumo)
		super(codigo, nombre,habitacion, estado, mes)
		@consumo = consumo
	end
	def pago
		return 20 * consumo
	end
end

class ServicioLuz < Servicio
	attr_accessor :vatios

	def pago
		return 50*vatios
	end
end

class ServicioSeguridad < Servicio
	attr_accessor :personas
	def pago
		return  30 *personas
	end
end

class ServicioAreasComunes < Servicio

	def pago
		return 900
	end
end

class Visita
	attr_accessor :codigo, :fecha, :visitante, :habitacion

	def initialize(codigo,fecha,vistante,habitacion)
		@codigo, @fecha, @vistante, @habitacion = codigo,fecha,vistante,habitacion
	end
end

class Reporte
	attr_accessor :vistas, :servicios

	def initialize()
		@visistas = Array.new
		@servicios = Array.new
	end

	def agregarVista(aux)
		@visistas.push(aux)
	end
	def agregarServicios(aux)
		@servicios.push(aux)
	end  
end

objH001 = Habitacion.new("H001", 1)
objR001 = Residente.new("R001", "Luis Perales",objH001)
objV001 = Visitante.new("V001", "Jorge Arcos",objH001 ,objR001)
objVS001 = Visita.new("VS001", Date.strptime("01-10-2018",'%d-%m-%Y'),objV001 ,objH001)