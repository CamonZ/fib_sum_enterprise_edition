require 'spec_helper'

RSpec.describe Evaluators::IsEven do
  it "returns true when called with an even number" do
    expect(subject.true_for?(4)).to be true
  end

  it "returns false when called with an odd number" do
    expect(subject.true_for?(17)).to be false
  end
end
