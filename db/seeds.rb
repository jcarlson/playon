# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

afl     = Publisher.create :name => "Arena Football League"
cobb    = Publisher.create :name => "Cobb Little League"
playon  = Publisher.create :name => "PlayOn! Productions"

Event.create :name => "Jacksonville Sharks at Georgia Force", :scheduled_date => "09 Jun 2012, 7:00 PM ET", :publisher_id => afl.id

Event.create :name => "Little League World Series, Game 1", :scheduled_date => "28 June 2012, 12:00 PM ET", :publisher_id => cobb.id

Event.create :name => "Friday Night Football", :scheduled_date => "17 Aug 2012, 7:00 PM ET", :publisher_id => playon.id