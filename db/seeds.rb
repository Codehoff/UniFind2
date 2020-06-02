# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Application.destroy_all
Document.destroy_all
ApplicationsDocument.destroy_all
UniversitiesProgramsDocument.destroy_all
Program.destroy_all
UniversitiesProgram.destroy_all
University.destroy_all
User.destroy_all
Notification.destroy_all

Document.create(name: "Visa")
Document.create(name: "CV")
Document.create(name: "motivational letter")

University.create(name: "TU Berlin", city: "Berlin")
Universitiy.create(name: "LMU München", city: "München")

Program.create(name: "Economics")
Program.create(name: "Engineering")

UniversitiesProgram.create(program: "Engineering", university: "TU Berlin")
UniversitiesProgram.create(program: "Economics", university: "LMU München")


