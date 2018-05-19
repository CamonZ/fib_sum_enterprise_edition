require 'spec_helper'

RSpec.describe ConditionalValuesAggregator do
  describe "summing up even fibonacci numbers" do
    it "returns the sum for fib numbers less than 4 million" do
      expect(subject.aggregate(4000000)).to eq(4613732)
    end
  end

  describe "summing up odd fibonacci numbers" do
    it "returns the sum for fib numbers less than 200" do
      generator = Generators::Fibonacci.new
      evaluator = Evaluators::IsOdd.new

      expect(subject.aggregate(200, generator, evaluator)).to eq(188)
    end
  end
end
