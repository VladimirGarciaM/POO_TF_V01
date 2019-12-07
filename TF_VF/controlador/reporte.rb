class Reporte
	attr_accessor :visitas, :servicios
	def initialize()
		@visitas = Array.new
		@servicios = Array.new
	end
	def agregarVisita(aux)
		begin
			raise ValidaDNI, ""  if aux.visitante.dni.length != 8
            raise ValidaCodigoVisita, "" if existeCodVisita(aux.codigo) == true
				@visitas.push(aux)
				rescue => err
			puts "#{err.class}: #{err.message}" +  "-" + aux.codigo + "-" + aux.visitante.dni + "-" + aux.visitante.nombre
			puts "-"
		end	
	end
	def agregarServicios(aux)
		@servicios.push(aux)
	end 
	def imprimirVisita(x)
		puts x.codigo + "\t" + 
		     x.fecha.to_s + "\t" + 
		     x.visitante.dni + "\t" +
		     x.visitante.nombre + "\t" +		     
		     x.habitacion.numHab.to_s + "\t" +
		     x.visitante.residente.nombre 
		         	     
	end
	def imprimirServicios(x)
		puts x.codigo.to_s + "\t\t" +
		     x.residente.habitacion.numHab.to_s + "\t" +
		     x.residente.nombre.to_s + "\t" +	
		     x.residente.dni + "\t" +		       
		     x.mes + "\t\t" +
		     x.pago.to_s + "\t\t" +
		     x.estado + "\t" +  		     	     
		     if x.instance_of? ServicioAgua
		     	"Servicio Agua"
		     elsif x.instance_of? ServicioLuz
		     	"Servicio Luz"
		     elsif x.instance_of? ServicioSeguridad
		     	"Servicio Seguridad"
		     else
		     	"Servicio Areas Comunes"
		     end 		
	end	
	def listarVisita
		cabeceraVisita
		for x in @visitas
			imprimirVisita(x)
		end
	end	
	def listarServicios
		cabeceraServicios
		for x in @servicios
			imprimirServicios(x)			
		end
	end	
	def listarServiciosPendientes(est)
		cabeceraServicios
		for x in @servicios
			if x.estado == est
				imprimirServicios(x)
			end	
		end
	end	
	def listarServiciosPendientesxHabitacion(hab)
		cabeceraServicios
		for x in @servicios
			if x.residente.habitacion.numHab == hab and x.estado == "PENDIENTE"
				imprimirServicios(x)
			end	
		end
	end	
	def listarPagosServiciosxHabitacion(hab)
		cabeceraServicios
		for x in @servicios
			if x.residente.habitacion.numHab == hab and x.estado == "CANCELADO"
				imprimirServicios(x)
			end	
		end
	end	
	def listarResidentesDeudoresxServicio(ser)
		cabeceraServicios
		for x in @servicios
			if x.estado == "PENDIENTE" and x.instance_of? ser
				imprimirServicios(x)
			end	
		end
	end	
	def listarPagosServiciosxDNI(dni)
		cabeceraServicios
		for x in @servicios
			if x.estado == "CANCELADO" and x.residente.dni == dni
				imprimirServicios(x)
			end	
		end
	end	
	def listarVisitaxDni(dni)
		cabeceraVisita
		for x in @visitas
			if x.visitante.dni == dni
				imprimirVisita(x)
			end
		end
	end	
	def listarVisitaxHabitacion(hab)
		cabeceraVisita
		for x in @visitas
			if x.habitacion.numHab == hab
				imprimirVisita(x)
			end
		end
	end	
	def listarVisitaxRangoFecha(inicio,fin)
		cabeceraVisita
		for x in @visitas
			if x.fecha >= inicio and x.fecha <= fin
				imprimirVisita(x)
			end
		end
	end	
	def cabeceraVisita
		puts "-------------------------------------------------------------------------"
		puts "NU_VISI\tFECHA\t\tDNIVISIT\tVISITANTE\tHABI\tRESIDENTE"
		puts "-------------------------------------------------------------------------"
	end	
	def cabeceraServicios
		puts "---------------------------------------------------------------------------------------"
		puts "COD.\tHABI\tRESIDENTE\tDNI\t\t\tMES\t\tPAG\t\tESTADO\t\tSERVICIO"
		puts "---------------------------------------------------------------------------------------"
	end	

	def existeCodVisita(cod)
		result = false
		for x in @visitas
			if x.codigo == cod
				result = true
			end
		end
		return result
	end	
end