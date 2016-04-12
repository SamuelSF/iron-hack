class FizzBuzz
    def buzzer(n)
        if n % 3 == 0
            if n % 5 == 0
                "Fizz Buzz"
            else
                "Fizz"
            end
        elsif n % 5 == 0
            "Buzz"
        else
            n.to_s
        end
    end
end