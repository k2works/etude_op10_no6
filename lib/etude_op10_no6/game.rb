module EtudeOp10No6
  class Game
    def initialize
      @its_score = 0
      @its_throws = Array.new(21,0)
      @its_current_throw = 0
      @its_current_frame = 0
      @first_throw = true
    end

    def score
      @its_score
    end

    def add(pins)
      @its_throws[@its_current_throw] = pins
      @its_current_throw+=1
      @its_score+=pins
      adjust_current_frame
    end

    def adjust_current_frame
      if @first_throw == true
        @first_throw = false
        @its_current_frame += 1
      else
        @first_throw = true
      end
    end

    def score_for_frame(the_frame)
      score = 0
      ball = 0
      current_frame = 0
      while current_frame < the_frame
        first_throw = @its_throws[ball]
        second_thow = @its_throws[ball+1]
        frame_score = first_throw + second_thow

        if frame_score == 10
          score += frame_score + @its_throws[ball]
        else
          score += frame_score
        end

        ball+=2
        current_frame+=1
      end
      score
    end

    def get_current_frame
      @its_current_frame
    end
  end
end
