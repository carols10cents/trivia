require 'test_helper'
require 'stringio'

describe "GameWriter" do
  it "should have an output method that takes an argument" do
    $stdout = StringIO.new
    UglyTrivia::GameWriter.output("hi")
    $stdout.string.must_equal("hi\n")
  end
end
