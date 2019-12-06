#Importaciones
require 'date'
require "../util/factory.rb"
require "../util/validadni.rb"
require "../util/validacodigovisita.rb"
require "../controlador/reporte.rb"
require "../model/habitacion.rb"
require "../model/residente.rb"
require "../model/visitante.rb"
require "../model/visita.rb"
#Objeto Habitacion
hab1 = Factory.crearHabitaciones("H001", 1)
hab2 = Factory.crearHabitaciones("H002", 2)
hab3 = Factory.crearHabitaciones("H003", 3)
hab4 = Factory.crearHabitaciones("H004", 4)
hab5 = Factory.crearHabitaciones("H005", 5)
#Objeto Residente
res1 = Factory.crearResidentes("00000001", "Residente1",hab1)
res2 = Factory.crearResidentes("00000002", "Residente2",hab1)
res3 = Factory.crearResidentes("00000003", "Residente3",hab2)
res4 = Factory.crearResidentes("00000004", "Residente4",hab3)
res5 = Factory.crearResidentes("00000005", "Residente5",hab4)
res6 = Factory.crearResidentes("00000006", "Residente6",hab4)
res7 = Factory.crearResidentes("00000007", "Residente7",hab5)
#Objeto Visitante
vis1 = Factory.crearVisitantes("00000001", "Visitante1",hab1 ,res1)
vis2 = Factory.crearVisitantes("00000002", "Visitante2",hab1 ,res1)
vis3 = Factory.crearVisitantes("00000003", "Visitante3",hab2 ,res3)
vis4 = Factory.crearVisitantes("00000004", "Visitante4",hab3 ,res4)
vis5 = Factory.crearVisitantes("00000005", "Visitante5",hab1 ,res2)
vis6 = Factory.crearVisitantes("00000006", "Visitante6",hab3 ,res4)
vis7 = Factory.crearVisitantes("00000007", "Visitante7",hab4 ,res5)
vis8 = Factory.crearVisitantes("00000008", "Visitante8",hab2 ,res3)
vis9 = Factory.crearVisitantes("00000009", "Visitante9",hab2 ,res3)
vis10 = Factory.crearVisitantes("00000010", "Visitante10",hab1 ,res1)
vis11 = Factory.crearVisitantes("00000011", "Visitante11",hab1 ,res1)
vis12 = Factory.crearVisitantes("00000012", "Visitante12",hab1 ,res2)
vis13 = Factory.crearVisitantes("00000013", "Visitante13",hab2 ,res3)
vis14 = Factory.crearVisitantes("00000014", "Visitante14",hab2 ,res3)
vis15 = Factory.crearVisitantes("00000015", "Visitante15",hab5 ,res7)
#Objeto Visita
visita1 = Factory.crearVisitas("VS001", Date.strptime("31-10-2019",'%d-%m-%Y'),vis1 ,hab1)
visita2 = Factory.crearVisitas("VS002", Date.strptime("01-11-2019",'%d-%m-%Y'),vis2 ,hab1)
visita3 = Factory.crearVisitas("VS003", Date.strptime("01-11-2019",'%d-%m-%Y'),vis3 ,hab2)
visita4 = Factory.crearVisitas("VS004", Date.strptime("02-11-2019",'%d-%m-%Y'),vis4 ,hab3)
visita5 = Factory.crearVisitas("VS005", Date.strptime("03-11-2019",'%d-%m-%Y'),vis5 ,hab1)
visita6 = Factory.crearVisitas("VS006", Date.strptime("03-11-2019",'%d-%m-%Y'),vis6 ,hab3)
visita7 = Factory.crearVisitas("VS007", Date.strptime("03-11-2019",'%d-%m-%Y'),vis7 ,hab4)
visita8 = Factory.crearVisitas("VS008", Date.strptime("03-11-2019",'%d-%m-%Y'),vis8 ,hab2)
visita9 = Factory.crearVisitas("VS009", Date.strptime("03-11-2019",'%d-%m-%Y'),vis9 ,hab2)
visita10 = Factory.crearVisitas("VS010", Date.strptime("04-11-2019",'%d-%m-%Y'),vis10 ,hab1)
visita11 = Factory.crearVisitas("VS011", Date.strptime("05-11-2019",'%d-%m-%Y'),vis11 ,hab1)
visita12 = Factory.crearVisitas("VS012", Date.strptime("05-11-2019",'%d-%m-%Y'),vis12 ,hab1)
visita13 = Factory.crearVisitas("VS013", Date.strptime("06-11-2019",'%d-%m-%Y'),vis13 ,hab2)
visita14 = Factory.crearVisitas("VS014", Date.strptime("06-11-2019",'%d-%m-%Y'),vis14 ,hab2)
visita15 = Factory.crearVisitas("VS015", Date.strptime("06-11-2019",'%d-%m-%Y'),vis15 ,hab5)

visita16 = Factory.crearVisitas("VS015", Date.strptime("06-11-2019",'%d-%m-%Y'),vis15 ,hab5)
#Objeto Reporte
reporte = Reporte.new
#Agrega Visitas
reporte.agregarVista(visita1)
reporte.agregarVista(visita2)
reporte.agregarVista(visita3)
reporte.agregarVista(visita4)
reporte.agregarVista(visita5)
reporte.agregarVista(visita6)
reporte.agregarVista(visita7)
reporte.agregarVista(visita8)
reporte.agregarVista(visita9)
reporte.agregarVista(visita10)
reporte.agregarVista(visita11)
reporte.agregarVista(visita12)
reporte.agregarVista(visita13)
reporte.agregarVista(visita14)
reporte.agregarVista(visita15)
# reporte.agregarVista(visita16)

#Objeto Servicios con patrón factory
serv1_1 = Factory.creaServicios("01","001","SERVICIO AGUA",res1,"CANCELADO","NOV",8)
serv2_1 = Factory.creaServicios("02","002","SERVICIO LUZ",res1,"CANCELADO","NOV",5)
serv3_1 = Factory.creaServicios("03","003","SERVICIO SEGURIDAD",res1,"PENDIENTE","NOV",10)
serv4_1 = Factory.creaServicios("04","004","SERVICIO AREAS COMUNES",res1,"CANCELADO","NOV")
serv1_2 = Factory.creaServicios("01","001","SERVICIO AGUA",res3,"CANCELADO","NOV",7)
serv2_2 = Factory.creaServicios("02","002","SERVICIO LUZ",res3,"CANCELADO","NOV",5)
serv3_2 = Factory.creaServicios("03","003","SERVICIO SEGURIDAD",res3,"CANCELADO","NOV",8)
serv4_2 = Factory.creaServicios("04","004","SERVICIO AREAS COMUNES",res3,"CANCELADO","NOV")
serv1_3 = Factory.creaServicios("01","001","SERVICIO AGUA",res4,"CANCELADO","NOV",6)
serv2_3 = Factory.creaServicios("02","002","SERVICIO LUZ",res4,"CANCELADO","NOV",3)
serv3_3 = Factory.creaServicios("03","003","SERVICIO SEGURIDAD",res4,"CANCELADO","NOV",7)
serv4_3 = Factory.creaServicios("04","004","SERVICIO AREAS COMUNES",res4,"CANCELADO","NOV")
serv1_4 = Factory.creaServicios("01","001","SERVICIO AGUA",res5,"CANCELADO","NOV",7)
serv2_4 = Factory.creaServicios("02","002","SERVICIO LUZ",res5,"CANCELADO","NOV",4)
serv3_4 = Factory.creaServicios("03","003","SERVICIO SEGURIDAD",res5,"CANCELADO","NOV",6)
serv4_4 = Factory.creaServicios("04","004","SERVICIO AREAS COMUNES",res5,"PENDIENTE","NOV")
serv1_5 = Factory.creaServicios("01","001","SERVICIO AGUA",res7,"CANCELADO","NOV",8)
serv2_5 = Factory.creaServicios("02","002","SERVICIO LUZ",res7,"CANCELADO","NOV",7)
serv3_5 = Factory.creaServicios("03","003","SERVICIO SEGURIDAD",res7,"CANCELADO","NOV",6)
serv4_5 = Factory.creaServicios("04","004","SERVICIO AREAS COMUNES",res7,"CANCELADO","NOV")

#Agrega Servicios
reporte.agregarServicios(serv1_1)
reporte.agregarServicios(serv2_1)
reporte.agregarServicios(serv3_1)
reporte.agregarServicios(serv4_1)
reporte.agregarServicios(serv1_2)
reporte.agregarServicios(serv2_2)
reporte.agregarServicios(serv3_2)
reporte.agregarServicios(serv4_2)
reporte.agregarServicios(serv1_3)
reporte.agregarServicios(serv2_3)
reporte.agregarServicios(serv3_3)
reporte.agregarServicios(serv4_3)
reporte.agregarServicios(serv1_4)
reporte.agregarServicios(serv2_4)
reporte.agregarServicios(serv3_4)
reporte.agregarServicios(serv4_4)
reporte.agregarServicios(serv1_5)
reporte.agregarServicios(serv2_5)
reporte.agregarServicios(serv3_5)
reporte.agregarServicios(serv4_5)

#Consultas
puts "Listado de Residentes"
reporte.listarVisita
puts "-"
puts "Listado de Visitas x Rango de Fechas"
reporte.listarVisitaxRangoFecha(Date.strptime("31-10-2019",'%d-%m-%Y'),Date.strptime("03-11-2019",'%d-%m-%Y'))
puts "-"
puts "Listado de Visitas x DNI"
reporte.listarVisitaxDni("00000001")
puts "-"
puts "Listado de Visitas x Habitación"
reporte.listarVisitaxHabitacion("H005")
puts "-"
puts "Listado de Servicios"
reporte.listarServicios
puts "-"
puts "Listado Pagos de Servicios x DNI"
reporte.listarPagosServiciosxDNI("00000001")
puts "-"
puts "Listado Pagos de Servicios Pendientes x Habitacion"
reporte.listarPagosServiciosxHabitacion("H001")
puts "-"
puts "Listado Pagos de Servicios Pendientes x Habitacion"
reporte.listarServiciosPendientesxHabitacion("H001")
puts "-"
puts "Listado de Servicios Pendientes"
reporte.listarServiciosPendientes("PENDIENTE")
puts "-"
puts "Listado Residentes Deudores x Servicio Seguridad"
reporte.listarResidentesDeudoresxServicio(ServicioSeguridad)
puts
puts "Listado Residentes Deudores x Servicio Areas Comunes"
reporte.listarResidentesDeudoresxServicio(ServicioAreasComunes)
puts