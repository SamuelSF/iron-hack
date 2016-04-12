class StringCalculator
    def add(num_string)
        digits = num_string.split(",").map{|x| x.to_i}.reduce(0, :+)
    end
end