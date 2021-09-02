puts "Borrando Base de Datos"
Appointment.destroy_all 
User.destroy_all
puts "Creando Usuarios"
User.create(first_name: "Nombre", last_name: "Apellido", rut: "Rut", client: true, address: "Dirección", phone: "Teléfono", email: "Mail", password: "Password")
puts "Creando Appoitnments"
Appointment.create(user: User.last, description: "Descripcion", status: "Estado de la reserva")
puts "Terminado"