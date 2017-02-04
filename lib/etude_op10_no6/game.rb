module EtudeOp10No6
  class Game
    def initialize
      @its_current_frame = 1
      @first_throw_in_frame = true
      @its_scorer = Scorer.new
    end

    def score
      score_for_frame(get_current_frame-1)
    end

    def get_current_frame
      @its_current_frame
    end

    def add(pins)
      @its_scorer.add_throw(pins)
      adjust_current_frame(pins)
    end

    def adjust_current_frame(pins)
      if @first_throw_in_frame == true
        if pins == 10 # ストライク
          @its_current_frame += 1
        else
          @first_throw_in_frame = false
        end
      else
        @first_throw_in_frame = true
        @its_current_frame += 1
      end
      @its_current_frame = [11,@its_current_frame].min
    end

    def score_for_frame(the_frame)
      @its_scorer.score_for_frame(the_frame)
    end
  end
end