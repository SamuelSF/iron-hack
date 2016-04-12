require_relative "../lib/fizz_buzz.rb"

RSpec.describe "Fizz Buzz" do
    fizz_buzz = FizzBuzz.new

    it "Prints the number." do
        expect(fizz_buzz.buzzer(1)).to eq("1")
        expect(fizz_buzz.buzzer(2)).to eq("2")
    end

    it "Prints Fizz for multiples of three." do
        expect(fizz_buzz.buzzer(3)).to eq("Fizz")
        expect(fizz_buzz.buzzer(6)).to eq("Fizz")
        expect(fizz_buzz.buzzer(9)).to eq("Fizz")
        expect(fizz_buzz.buzzer(12)).to eq("Fizz")
    end

    it "Prints Buzz for multiples of five." do
        expect(fizz_buzz.buzzer(5)).to eq("Buzz")
        expect(fizz_buzz.buzzer(25)).to eq("Buzz")
    end

    it "Prints Fizz Buzz for multiples of fifteen." do
        4.times do |i|
            expect(fizz_buzz.buzzer(i * 15)).to eq("Fizz Buzz")
        end
    end

end