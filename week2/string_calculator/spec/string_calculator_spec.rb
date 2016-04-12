require_relative "../lib/string_calculator.rb"

RSpec.describe "String calculator" do
    calculator = StringCalculator.new
    it "returns the sum when given multiple numbers" do
        expect(calculator.add("1,2,3,4")).to eq(10)
        expect(calculator.add("25,25,25")).to eq(75)
        expect(calculator.add("7,6")).to eq(13)
        expect(calculator.add("9,1")).to eq(10)
        expect(calculator.add("6,6,6")).to eq(18)
        expect(calculator.add("1,2,3,4,5")).to eq(15)
        expect(calculator.add("1,2,3,4,5,6,7,8,9,10")).to eq(55)
    end
    it "returns the sum when given one number." do
        expect(calculator.add("5")).to eq(5)
        expect(calculator.add("3")).to eq(3)
    end
    it "returns the sume when given no numbers" do
        expect(calculator.add("")).to eq(0)
    end
end