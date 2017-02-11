require "spec_helper"

describe "game" do
  let(:g) { Game.new }

  describe ".score" do
    context "when one throw" do
      it "is scored" do
        g.add(5)
        expect(g.score).to eq(5)
      end
    end

    context "when two throws" do
      it "is scored" do
        g.add(5)
        g.add(4)
        expect(g.score).to eq(9)
      end
    end

    context "when four throws" do
      it "is scored" do
        g.add(5)
        g.add(4)
        g.add(7)
        g.add(2)
        expect(g.score).to eq(18)
      end
    end
  end

  describe ".score_for_frame" do
    context "when spare" do
      it "is scored by frame" do
        g.add(3)
        g.add(7)
        g.add(3)
        expect(g.score_for_frame(1)).to eq(13)
      end
    end

    context "when four throws" do
      it "is scored by farme" do
        g.add(5)
        g.add(4)
        g.add(7)
        g.add(2)
        expect(g.score_for_frame(1)).to eq(9)
        expect(g.score_for_frame(2)).to eq(18)
      end
    end

    context "when after spare" do
      it "is scored by frame" do
        g.add(3)
        g.add(7)
        g.add(3)
        g.add(2)
        expect(g.score_for_frame(1)).to eq(13)
        expect(g.score_for_frame(2)).to eq(18)
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
        g.add(5)
        g.add(4)
        expect(g.get_current_frame).to eq(2)
      end
    end

    context "when after spare" do
      it "is current frame" do
        g.add(3)
        g.add(7)
        g.add(3)
        g.add(2)
        expect(g.get_current_frame).to eq(3)
      end
    end
  end
end
