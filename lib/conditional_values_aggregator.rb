require_relative 'generators/fibonacci.rb'

class ConditionalValuesAggregator
  def self.aggregate(upto)
    new.aggregate(upto)
  end

  def aggregate(max_value, generator = Generators::Fibonacci.new)
    do_aggregate(0, max_value, generator)
  end

  private

  def do_aggregate(sum, max_value, generator)
    next_value = generator.next_number

    return sum if next_value >= max_value
    sum += next_value if next_value.even?

    do_aggregate(sum, max_value, generator)
  end
end
