class Calculator
    def calculate(first, second, operation)
        if operation == "+"
            result = first + second
        elsif operation == "*"
            result = first * second
        elsif operation == "/"
            result = first / second
        elsif operation == "-"
            result = first - second
        end
        result
    end
end