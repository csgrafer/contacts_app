# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FFaker::Name.first_name
FFaker::Name.first_name
FFaker::Name.last_name
FFaker::PhoneNumber.phone_number
FFaker::Internet.email

20.times do
  contact1 = Contact.new(first_name: FFaker::Name.first_name, middle_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, phone_number: FFaker::PhoneNumber.phone_number, email: FFaker::Internet.email)

  contact1.save
end



