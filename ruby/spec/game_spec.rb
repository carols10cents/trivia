require 'spec_helper'

describe UglyTrivia::Game do
  describe '#new' do
    it 'should create a new random number generator' do
      UglyTrivia::RandomNumber.should_receive(:new)
      described_class.new
    end
  end

  describe "#was_correctly_answered" do
    before do
      $stdout = StringIO.new
      class UglyTrivia::Game
        def is_player_in_penalty_box?(sdkf); true;end
        def is_player_leaving_penalty_box?; true;end
        def current_player; true;end
      end
      @game = UglyTrivia::Game.new

    end

    it "prints 'Answer was correct!!!!'" do
      @game.was_correctly_answered
      $stdout.string.should match 'Answer was correct!!!!'
    end

    it "releases the player from the penalty box" do
      @game.should_receive(:move_player_from_penalty_box).with(true)
      @game.was_correctly_answered
    end
  end
end
