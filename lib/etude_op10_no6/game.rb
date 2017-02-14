module EtudeOp10No6
  class Game
    def initialize
      @its_current_frame = 1
      @its_first_throw = true
      @its_scorer = Scorer.new
    end

    def score
      score_for_frame(get_current_frame-1)
    end

    def add(pins)
      @its_scorer.add_throw(pins)
      adjust_current_frame(pins)
    end

    def adjust_current_frame(pins)
      if @its_first_throw == true
        if pins == 10
          advance_frame
        else
          @its_first_throw = false
        end
      else
        @its_first_throw = true
        advance_frame
      end
      @its_current_frame = [11,@its_current_frame].min
    end

    def score_for_frame(the_frame)
      @its_scorer.score_for_frame(the_frame)
    end

    def get_current_frame
      @its_current_frame
    end

    private
    def advance_frame
      @its_current_frame = [11,@its_current_frame+1].min
    end
  end
end
