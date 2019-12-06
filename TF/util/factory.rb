require "../model/servicioagua.rb"
require "../model/servicioluz.rb"
require "../model/servicioseguridad.rb"
require "../model/servicioareascomunes.rb"
class Factory
    def self.creaServicios(codigo, *args)
		case codigo
			when "01"					
				ServicioAgua.new(args[0],args[1],args[2],args[3],args[4],args[5])				
			when "02"
				ServicioLuz.new(args[0],args[1],args[2],args[3],args[4],args[5])
			when "03"
				ServicioSeguridad.new(args[0],args[1],args[2],args[3],args[4],args[5])
			when "04"
				ServicioAreasComunes.new(args[0],args[1],args[2],args[3],args[4])		
		end		
  	end
  	def self.crearHabitaciones(*args)
  		Habitacion.new(args[0],args[1])
  	end	
  	def self.crearResidentes(*args)
  		Residente.new(args[0],args[1],args[2])
  	end	
  	def self.crearVisitantes(*args)
  		Visitante.new(args[0],args[1],args[2],args[3])
  	end	
  	def self.crearVisitas(*args)
  		Visita.new(args[0],args[1],args[2],args[3])
  	end
end