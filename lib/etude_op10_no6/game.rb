module EtudeOp10No6
  class Game
    def initialize
      @its_score = 0
      @its_current_frame = 1
      @its_first_throw = true
      @its_scorer = Scorer.new
    end

    def score
      score_for_frame(get_current_frame-1)
    end

    def add(pins)
      @its_scorer.add_throw(pins)
      @its_score+=pins
      adjust_current_frame(pins)
    end

    def adjust_current_frame(pins)
      if @its_first_throw == true
        if pins == 10
          @its_current_frame += 1
        else
          @its_first_throw = false
        end
      else
        @its_first_throw = true
        @its_current_frame += 1
      end
      @its_current_frame = [11,@its_current_frame].min
    end

    def score_for_frame(the_frame)
      @its_scorer.score_for_frame(the_frame)
    end

    def get_current_frame
      @its_current_frame
    end
  end
end
