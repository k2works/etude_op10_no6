module EtudeOp10No6
  class Game
    def initialize
      @its_current_frame = 1
      @its_first_throw = true
      @its_scorer = Scorer.new
    end

    def score
      score_for_frame(@its_current_frame)
    end

    def add(pins)
      @its_scorer.add_throw(pins)
      adjust_current_frame(pins)
    end

    def score_for_frame(the_frame)
      @its_scorer.score_for_frame(the_frame)
    end

    private
    def adjust_current_frame(pins)
      if (@its_first_throw && pins == 10 || !@its_first_throw)
        advance_frame
        @its_first_throw = true
      else
        @its_first_throw = false
      end
    end

    def advance_frame
      @its_current_frame = [10,@its_current_frame+1].min
    end
  end
end
