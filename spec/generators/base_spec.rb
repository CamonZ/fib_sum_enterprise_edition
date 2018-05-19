require 'spec_helper'

RSpec.describe Generators::Base do
  it "raises NotImplementedError when receiving 'next_number'" do
    expect { subject.next_number }.to raise_error(NotImplementedError)
  end
end
