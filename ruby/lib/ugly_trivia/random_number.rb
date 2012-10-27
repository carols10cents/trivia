module UglyTrivia
  class RandomNumber
    attr_accessor :last_roll

    def next_roll
      self.last_roll = rand(5) + 1
    end

    def liberating?
      last_roll.odd?
    end
  end
end
