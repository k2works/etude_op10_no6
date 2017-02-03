module EtudeOp10No6
  class Game
    def initialize
      @its_score = 0
      @its_throws = Array.new(21,0)
      @its_current_throw = 0
      @its_current_frame = 1
      @first_throw_in_frame = true
    end

    def score
      score_for_frame(get_current_frame-1)
    end

    def get_current_frame
      @its_current_frame
    end

    def add(pins)
      @its_throws[@its_current_throw] = pins
      @its_current_throw += 1
      @its_score += pins
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
      score = 0
      @ball = 0
      current_frame = 0
      while current_frame < the_frame
        @first_throw = @its_throws[@ball]
        if strike
          @ball += 1
          score += 10 + next_tow_boalls
        else
          score += handle_second_throw
        end
        current_frame += 1
      end
      score
    end

    def strike
      @first_throw == 10
    end

    def next_tow_boalls
      @its_throws[@ball] + @its_throws[@ball+1]
    end

    def handle_second_throw
      score = 0
      @second_throw = @its_throws[@ball+1]
      frame_score = @first_throw + @second_throw
      # スペアの得点計算には次のフレームの第１投が必要
      if frame_score == 10
        @ball += 2
        score += frame_score + @its_throws[@ball]
      else
        @ball += 2
        score += frame_score
      end
      score
    end
  end
end