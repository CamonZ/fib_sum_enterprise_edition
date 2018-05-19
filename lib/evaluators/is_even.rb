require_relative 'base.rb'

class Evaluators::IsEven < Evaluators::Base
  def true_for?(value)
    value.even?
  end
end
