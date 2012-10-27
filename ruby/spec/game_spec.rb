require 'spec_helper'

describe UglyTrivia::Game do
  describe '#new' do
    it 'should create a new random number generator' do
      UglyTrivia::RandomNumber.should_receive(:new)
      described_class.new
    end
  end
end
