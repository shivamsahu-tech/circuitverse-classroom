# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


UserClassroom.create!([
  {
    title: "Basic Circuit Theory",
    description: "Understand fundamental circuit concepts like Ohm's Law and Kirchhoff’s rules.",
    teacher: "Dr. A. Sharma",
    role: "teacher"
  },
  {
    title: "Digital Logic Design",
    description: "Learn about logic gates, boolean algebra, and sequential circuits.",
    teacher: "Prof. V. Nair",
    role: "student"
  },
  {
    title: "PCB Design & Fabrication",
    description: "Design printed circuit boards using EAGLE and Altium Designer.",
    teacher: "Engr. R. Gupta",
    role: "teacher"
  }
])
