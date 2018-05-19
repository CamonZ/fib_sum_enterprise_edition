module Evaluators
  class Base
    def true_for?(val)
      raise NotImplementedError
    end
  end
end
