class Animal
    def inilialize(name, age)
        @name = name
        @age = age
end

def name
    @name
end

def dog_years
    @age * 7
end

def name=(new_name)
    @name = new_name
end

