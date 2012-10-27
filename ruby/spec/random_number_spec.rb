require 'spec_helper'

describe UglyTrivia::RandomNumber do
  describe '#next_roll' do
    it 'should return a number between one and five' do
      (1..5).should === subject.next_roll
    end
  end

  describe '#liberating?' do
    context 'when the last roll was odd' do
      it 'should be true' do
        subject.stub(:last_roll).and_return(5)
        subject.should be_liberating
      end
    end

    context 'when the last roll was even' do
      it 'should be false' do
        subject.stub(:last_roll).and_return(4)
        subject.should_not be_liberating
      end
    end
  end
end
