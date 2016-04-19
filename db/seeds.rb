require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

status = ["Active", "Closed"]
gender = ["female", "male"]

10.times do |i|
  Study.create(title: Faker::Company.catch_phrase, investigator_name: Faker::Name.name, status: status.sample)
  Site.create(name: Faker::Team.name, location: Faker::Address.city)
  Participant.create(name: Faker::Name.name, gender: gender.sample, birthdate: Faker::Date.between(50.year.ago, Date.today), address: Faker::Address.street_address)
end

50.times do |i|
  StudySiteJoin.create(site_id: rand(10), study_id: rand(10))
  Enrollment.create(study_id: rand(10), participant_id: rand(10), site_id: rand(10))
end
