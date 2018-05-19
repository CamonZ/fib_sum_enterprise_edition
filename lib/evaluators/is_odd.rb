require_relative 'base.rb'

class Evaluators::IsOdd < Evaluators::Base
  def true_for?(value)
    value.odd?
  end
end
