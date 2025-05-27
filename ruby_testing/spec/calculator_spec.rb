# spec/calculator_spec.rb
require './lib/calculator'


describe Calculator do
  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end
  end
  describe "#subtract" do
    it "returns the result of the second number subracted from the first number" do
      calculator = Calculator.new
      expect(calculator.subtract(7, 3)).to eql(4)
    end
    it "returns the result of the second number subracted from the first number even if both are negative" do
      calculator = Calculator.new
      expect(calculator.subtract(-10, -15)).to eql(5)
    end
  end
end