require_relative 'base.rb'

class Generators::Fibonacci < Generators::Base
  attr_reader :previous_numbers, :steps

  def initialize
    @previous_numbers = Array.new(2, 1)
    @steps = 1
  end

  def next_number
    @previous_numbers = [@previous_numbers.sum, @previous_numbers[0]]
    @steps += 1

    @previous_numbers[0]
  end
end
