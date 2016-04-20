# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bim = Project.create(name: "fruit", description: "fly")
bam = Project.create(name: "happy" , description: "feet")
bum = Project.create(name: "wood", description: "chuck")
Project.create(name: "there is no", description: "spoon")
Project.create(name: "foo", description:"bar")
Project.create(name: "the cake is", description: "a lie")
Project.create(name: "some like it", description:"hot")
Project.create(name: "Good morning", description:"Vietnam")
Project.create(name: "The spruce", description: "moose")
Project.create(name: "You mad?", description:"I do what I want!")

entry1 = TimeEntry.create(hours: 5, minutes: 30, date: Time.now)
entry2 = TimeEntry.create(hours: 4, minutes: 25, date: Time.now)
entry3 = TimeEntry.create(hours: 3, minutes: 20, date: Time.now)

entry1.project = bim
entry1.save
entry2.project = bam
entry2.save
entry3.project = bum
entry3.save