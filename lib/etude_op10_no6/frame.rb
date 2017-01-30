module EtudeOp10No6
  class Frame
    def initialize
      @its_score = 0
    end

    def get_score
      @its_score
    end

    def add (pins)
      @its_score = pins + @its_score
    end
  end
end