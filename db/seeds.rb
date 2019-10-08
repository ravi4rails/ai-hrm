# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

departments = Department.create([
  { name: 'Operations', established_from: Date.today - 3.years }, 
  { name: 'Human Recource', established_from: Date.today - 3.years }, 
  { name: 'Accounts', established_from: Date.today - 3.years }, 
  { name: 'Maintenence', established_from: Date.today - 3.years }, 
  { name: 'Canteen', established_from: Date.today - 3.years }, 
  { name: 'Stores', established_from: Date.today - 3.years } 
])

employee_grades = EmployeeGrade.create([
 { name: 'A' },
 { name: 'B' },
 { name: 'C' },
 { name: 'D' }
])