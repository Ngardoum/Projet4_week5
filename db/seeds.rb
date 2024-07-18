# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# Suppression des anciennes données
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all

# Création de villes
city1 = City.create(name: "Paris")
city2 = City.create(name: "New York")
city3 = City.create(name: "London")

# Création de spécialités
specialty1 = Specialty.create(name: "Cardiology")
specialty2 = Specialty.create(name: "Neurology")
specialty3 = Specialty.create(name: "Pediatrics")

# Création de docteurs
doctor1 = Doctor.create(first_name: "John", last_name: "Doe", city: city1, specialties: [specialty1, specialty2])
doctor2 = Doctor.create(first_name: "Jane", last_name: "Smith", city: city2, specialties: [specialty3])

# Création de patients
patient1 = Patient.create(first_name: "Alice", last_name: "Johnson", city: city1)
patient2 = Patient.create(first_name: "Bob", last_name: "Williams", city: city2)

# Création de rendez-vous
Appointment.create(date: DateTime.new(2024, 7, 17, 14, 0, 0), doctor: doctor1, patient: patient1, city: city1)
Appointment.create(date: DateTime.new(2024, 7, 18, 10, 30, 0), doctor: doctor1, patient: patient2, city: city1)
Appointment.create(date: DateTime.new(2024, 7, 19, 9, 0, 0), doctor: doctor2, patient: patient1, city: city2)

puts "Seed completed!"

