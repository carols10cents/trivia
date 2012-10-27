require 'test_helper'
require 'stringio'
require 'mocha'

describe "GameWriter" do
  it "should have an output method that takes an argument" do
    $stdout = StringIO.new
    UglyTrivia::GameWriter.output("hi")
    $stdout.string.must_equal("hi\n")
  end
end

describe "game output" do
  describe "adding a player" do
    it "says who joined" do
      o = mock
      game = UglyTrivia::Game.new(o)

      o.expects(:output).with("Bob was added")
      o.expects(:output).with("They are player number 1")

      game.add("Bob")
    end
  end
end