require 'spec_helper'

RSpec.describe ConditionalValuesAggregator do
  it "returns the sum of all even fibonacci numbers up to a certain value" do
    expect(described_class.aggregate(150)).to eq(188)
  end

  it "returns the sum of all even fibonacci numbers up to 4 million" do
    expect(described_class.aggregate(4000000)).to eq(4613732)
  end
end
