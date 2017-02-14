module EtudeOp10No6
  class Game
    def initialize
      @its_score = 0
      @its_throws = Array.new(21,0)
      @its_current_throw = 0
      @its_current_frame = 1
      @its_first_throw = true
    end

    def score
      score_for_frame(get_current_frame-1)
    end

    def add(pins)
      @its_throws[@its_current_throw] = pins
      @its_current_throw+=1
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
      score = 0
      @ball = 0
      current_frame = 0
      while current_frame < the_frame
        if strike
          score += 10 + next_two_balls_for_strike
          @ball+=1
        elsif spare
          score += 10 + next_ball_for_spare
          @ball+=2
        else
          score += two_balls_in_frame
          @ball+=2
        end
        current_frame+=1
      end
      score
    end

    def get_current_frame
      @its_current_frame
    end

    private
    def next_two_balls_for_strike
      @its_throws[@ball+1] + @its_throws[@ball+2]
    end

    def next_ball_for_spare
      @its_throws[@ball+2]
    end

    def next_two_balls
      @its_throws[@ball] + @its_throws[@ball+1]
    end

    def strike
      @its_throws[@ball] === 10
    end

    def two_balls_in_frame
      @its_throws[@ball] + @its_throws[@ball+1]
    end

    def spare
      (@its_throws[@ball] + @its_throws[@ball+1]) == 10
    end

    def next_ball
      @its_throws[@ball]
    end
  end
end
