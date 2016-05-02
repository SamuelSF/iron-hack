# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tournaments = Tournament.create([{name: "Smash Bros. Tournament"}, {name: "Street Fighter Tournament"}, {name: "Starcraft Tournament"}])

players = Player.create([{name: "Bob"}, {name: "Roberto"}, {name: "Maria"}, {name: "Tod"}, {name: "Emily"}, {name: "Charlotte"}])

tournaments.each do |tournament|
    players.each do |player|
        tournament.players.push player
    end
end