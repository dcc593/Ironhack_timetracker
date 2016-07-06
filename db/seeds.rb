# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating three projects"
projectA = Project.create(name: "Ironhack", description: "Coding bootcamp")
projectB = Project.create(name: "Papa Johns", description: "Decent chain for pizza")
projectC = Project.create(name: "Taco Bell")


TimeEntry.create(project_id: projectB.id , hours: 2, minutes: 30, comments: "Eating one whole pizza", date: Time.now)
TimeEntry.create(project_id: projectB.id , hours: 1, minutes: 30, comments: "Pizza Sale", date: Time.now)
TimeEntry.create(project_id: projectC.id , hours: 1, minutes: 0, comments: "Five dollar box", date: Time.now)

puts "done"