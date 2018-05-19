require 'spec_helper'

RSpec.describe Generators::Fibonacci do
  it "returns the next fibonacci number" do
    numbers = 10.times.map { |_|  subject.next_number }

    expect(numbers).to eq([1, 1, 2, 3, 5, 8, 13, 21, 34, 55])

    expect(subject.next_number).to eq(89)
  end
end
