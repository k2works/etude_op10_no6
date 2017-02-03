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

    def score_for_frame(the_frame)
      score = 0
      ball = 0
      current_frame = 0
      while current_frame < the_frame
        first_throw = @its_throws[ball]
        second_throw = @its_throws[ball+1]
        score += first_throw + second_throw
        ball += 2
        current_frame += 1
      end
      score
    end
  end
end