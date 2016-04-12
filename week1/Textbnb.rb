class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end

  def printer
    puts "#{self.name}'s is in #{self.city}, holds #{self.capacity} and costs $#{self.price}."
  end
end

def homes_printer(homes)
    homes.each {|home| home.printer}
end

homes = [
    Home.new("Sam", "Miami", 3, 100.0),
    Home.new("Mike", "Miami", 5, 150.0),
    Home.new("Bianca", "Miami", 5, 180.0),
    Home.new("Torque [construction noise] Lewith", "Philadelphia", 8, 500.0),
    Home.new("Donkey Teeth", "Cut & Shoot", 20, 50.0),
    Home.new("Quatro Quatro", "The Fifth Dimension", 4, 180.0),
    Home.new("Jackmerius Tracktheritrix", "Pompano Beach", 6, 70.0),
    Home.new("Hingle McCringleberry", "Philadelphia", 6, 666.66),
    Home.new("Darkwing Duck", "San Francisco", 8, 99.99),
    Home.new("Booty Warrior", "Sundown Town", 5, 50.0),
    Home.new("Seymore Cox", "The Moon", 8, 88.87),
]

puts "The available homes are:"

homes_printer(homes)
puts
puts "If you would like to sort by price from lowest to highest, enter \"lowest\" for the reverse enter \"highest\".  To sort by capacity enter \"capacity\"."

command = gets.chomp

if command == "lowest"
    homes.sort! {|x, y| x.price <=> y.price}
elsif command == "highest"
    homes.sort! {|x, y| y.price <=> x.price}
elsif command == "capacity"
    homes.sort! {|x, y| x.capacity <=> y.capacity}
end

puts

puts "The homes sorted by your selected criteria are:"

homes_printer(homes)

puts

puts "If you would like to filter by a city, enter the name of the city, otherwise hit return."

a_city = gets.chomp

if a_city != ""
    homes.select! {|home| home.city == a_city}
end

average_price = (homes.reduce(0.0) {|sum, home| sum + home.price}) / homes.length.to_f

puts "The homes in your selected city are:"
homes_printer(homes)
puts "The average price of a home in your selected city is $#{average_price}."

puts "Name the price you would like to pay from amongst the available homes."

wanted_price = gets.chomp.to_f

right_home = homes.find {|home| home.price == wanted_price}

if right_home == nil
    puts "There is no home in your selected city at your chosen price."
else
    right_home.printer
end

