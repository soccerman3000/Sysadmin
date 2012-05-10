# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "abraham.kuri@gmail.com", password: "secret", password_confirmation: "secret")
User.create(email: "alberto.villarreal@gmail.com", password: "secret", password_confirmation: "secret")
User.create(email: "epablos@itesm.mx", password: "secret", password_confirmation: "secret")

Owner.create(name: "Mario Villarreal", :email => "m@v.com")
Owner.create(name: "Abraham kuri", :email => "a@v.com")
Owner.create(name: "Edo lopez", :email => "e@v.com")
Owner.create(name: "Borrego gonzalez", :email => "b@v.com")
