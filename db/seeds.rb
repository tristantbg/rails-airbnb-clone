# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create ([
                       { first_name: 'a', last_name: 'aname', email: 'a@gmail.com', password: 'gyipgiu'},
                       { first_name: 'b', last_name: 'aname', email: 'b@gmail.com', password: 'y8o;jnjl'},
                       { first_name: 'c', last_name: 'aname', email: 'c@gmail.com', password: 'dryikuvhj'},
                       { first_name: 'd', last_name: 'aname', email: 'd@gmail.com', password: 'tuglvjkbj'},
                       { first_name: 'e', last_name: 'aname', email: 'e@gmail.com', password: 'gyuoliub'},
                       { first_name: 'f', last_name: 'aname', email: 'f@gmail.com', password: 'cxfykhjb'},
])
users.each do |user|
  Skill.create(name: Skill.allowed_skills.sample, user_id: user.id)
end
