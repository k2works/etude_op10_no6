require "spec_helper"

describe "game" do
  let(:g) { Game.new }

  describe ".score" do
    context "when two throws" do
      it "is scored" do
        tow_throws
        expect(g.score).to eq(9)
      end
    end

    context "when four throws" do
      it "is scored" do
        four_throws
        expect(g.score).to eq(18)
      end
    end

    context "when after spare" do
      it "is scored" do
        spare_4throws
        expect(g.score).to eq(18)
      end
    end

    context "when perfect game" do
      it "is scored" do
        perfect_game
        expect(g.score).to eq(300)
      end
    end
  end

  describe ".score_for_frame" do
    context "when spare" do
      it "is scored by frame" do
        spare_3thorws
        expect(g.score_for_frame(1)).to eq(13)
      end
    end

    context "when four throws" do
      it "is scored by farme" do
        four_throws
        expect(g.score_for_frame(1)).to eq(9)
        expect(g.score_for_frame(2)).to eq(18)
      end
    end

    context "when after spare" do
      it "is scored by frame" do
        spare_4throws
        expect(g.score_for_frame(1)).to eq(13)
        expect(g.score_for_frame(2)).to eq(18)
      end
    end

    context "when strike" do
      it "is scored" do
        strike
        expect(g.score_for_frame(1)).to eq(19)
      end
    end
  end

  describe ".get_current_frame" do
    context "when one throw" do
      it "is current frame" do
        g.add(5)
        expect(g.get_current_frame).to eq(1)
      end
    end

    context "when two throw" do
      it "is current frame" do
        tow_throws
        expect(g.get_current_frame).to eq(2)
      end
    end

    context "when after spare" do
      it "is current frame" do
        spare_3thorws
        expect(g.get_current_frame).to eq(2)
      end

      it "is current frame" do
        spare_4throws
        expect(g.get_current_frame).to eq(3)
      end
    end

    context "when strike" do
      it "is current frame" do
        strike
        expect(g.get_current_frame).to eq(3)
      end
    end

    context "when perfect game" do
      it "is current frame" do
        perfect_game
        expect(g.get_current_frame).to eq(10)
      end
    end
  end

  private
  def tow_throws
    g.add(5)
    g.add(4)
  end

  def four_throws
    g.add(5)
    g.add(4)
    g.add(7)
    g.add(2)
  end

  def spare_3thorws
    g.add(3)
    g.add(7)
    g.add(3)
  end

  def spare_4throws
    spare_3thorws
    g.add(2)
  end

  def strike
    g.add(10)
    g.add(3)
    g.add(6)
  end

  def perfect_game
    12.times do
      g.add(10)
    end
  end
end
