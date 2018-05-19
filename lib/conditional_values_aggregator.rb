require_relative 'generators/fibonacci.rb'
require_relative 'evaluators/is_even.rb'

class ConditionalValuesAggregator
  def self.aggregate(upto)
    new.aggregate(upto)
  end

  def aggregate(max_value, generator = Generators::Fibonacci.new, evaluator = Evaluators::IsEven.new)
    do_aggregate(0, max_value, generator, evaluator)
  end

  private

  def do_aggregate(sum, max_value, generator, evaluator)
    next_value = generator.next_number

    return sum if next_value >= max_value
    sum += next_value if evaluator.true_for?(next_value)

    do_aggregate(sum, max_value, generator, evaluator)
  end
end
