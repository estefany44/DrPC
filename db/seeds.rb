puts "Borrando Base de Datos"
Order.destroy_all
Appointment.destroy_all
User.destroy_all
puts "Creando Usuarios"
User.create(first_name: "Aministrador", last_name: "DrPC", rut: "9999999-9", client: false, address: "Avda Plama 38", phone: "991474434", email: "admin@dominio.com", password: "password")
puts "Creando Appoitnments"
<<<<<<< HEAD
Appointment.create(user: User.last, description: "Descripcion", status: "Estado de la reserva")
puts "Terminado"


=======
Appointment.create(user: User.last, description: "No enciende", status: "Pendiente")
puts "Creando (4) Orders"
Order.create(appointment:Appointment.last, diagnostic:"Falla en Pantalla", solution:"Cambio de Pantalla", status:"Abierta", price:15000)
Order.create(appointment:Appointment.last, diagnostic:"Falla en Procesador", solution:"Instalacion de Disipador", status:"Abierta", price:25000)
Order.create(appointment:Appointment.first, diagnostic:"Cabezal de impresora sucio", solution:"Limpieza de cabezal", status:"Abierta", price:5000)
Order.create(appointment:Appointment.first, diagnostic:"Falla de Cargador", solution:"Soldadura de cableado interno", status:"Cerrada", price:10000)
puts "Terminado"
>>>>>>> 4ef48a38878ecd5c835e5ba44846501107545cf4
