require 'spec_helper'

RSpec.describe Generators::Fibonacci do
  it "returns the next fibonacci number" do
    numbers = 10.times.map { |_|  subject.next_number }

    expect(numbers).to eq([2, 3, 5, 8, 13, 21, 34, 55, 89, 144])

    expect(subject.next_number).to eq(233)
  end
end
