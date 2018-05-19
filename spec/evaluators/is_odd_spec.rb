require 'spec_helper'

RSpec.describe Evaluators::IsOdd do
  it "returns true when called with an odd number" do
    expect(subject.true_for?(5)).to be true
  end

  it "returns false when called with an even number" do
    expect(subject.true_for?(42)).to be false
  end
end
