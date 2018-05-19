require_relative 'base.rb'

class Generators::Fibonacci < Generators::Base
  attr_reader :previous_numbers, :steps

  def initialize
    @previous_numbers = [0, 1]
    @steps = 0
  end

  def next_number
    @previous_numbers = [@previous_numbers.sum, @previous_numbers[0]]
    @steps += 1

    @previous_numbers[0]
  end
end
