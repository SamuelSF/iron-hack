 class Person
    attr_reader :name
    attr_accessor :age
    def initialize(name, age)
        @name = name
        @age = age
    end
end

# testing code down below

me = Person.new("Samuel Frade", 30)

puts me.name
puts me.age
me.age += 1
puts me.age
me.name = "Simon"
puts me.name