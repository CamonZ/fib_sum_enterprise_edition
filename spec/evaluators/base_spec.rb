require 'spec_helper'

RSpec.describe Evaluators::Base do
  it "raises NotImplementedError when receiving 'true_for?'" do
    expect { subject.true_for?(4) }.to raise_error(NotImplementedError)
  end
end
