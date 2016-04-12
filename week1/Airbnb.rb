class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

homes.each do |home|
    puts "#{home.name} is in #{home.city}"
    puts "Price: $#{home.price} a night"
    puts
end

prices = homes.map {|home| home.price}

average_price = (homes.reduce(0) {|sum, home| sum += home.price }) / homes.length.to_f

puts "The average price is: $#{average_price}."

total_capacities = homes.reduce(0) {|sum, home| sum += home.capacity}

average_capacity = total_capacities / homes.length.to_f

puts "The average capacity is: #{average_capacity}"

san_juan_homes = homes.select {|home| home.city == "San Juan"}

puts san_juan_homes

high_capacity_homes = homes.select {|home| home.capacity >= 4}