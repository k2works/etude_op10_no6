module EtudeOp10No6
  class Game
    def initialize
      @its_score = 0
      @its_throws = Array.new(21,0)
      @its_current_throw = 0
    end

    def score
      @its_score
    end

    def add(pins)
      @its_throws[@its_current_throw] = pins
      @its_current_throw += 1
      @its_score += pins
    end

    def score_for_frame(frame)
      score = 0
      ball = 0
      frame.downto(1) do |frame|
        score += @its_throws[ball] + @its_throws[ball+1]
        ball+=2
      end
      score
    end
  end
end