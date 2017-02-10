require "spec_helper"

describe "bowling game" do
  let(:g) { Game.new }

  context "when one throw" do
    it "should be scored" do
      g.add(5)
      expect(g.score).to eq(5)
    end
  end

  context "when two throws" do
    it "should be scored" do
      g.add(5)
      g.add(4)
      expect(g.score).to eq(9)
    end

    it "should be scored spare" do
      g.add(3)
      g.add(7)
      g.add(3)
      expect(g.score_for_frame(1)).to eq(13)
    end
  end

  context "when four throws" do
    it "should be scred" do
      g.add(5)
      g.add(4)
      g.add(7)
      g.add(2)
      expect(g.score).to eq(18)
      expect(g.score_for_frame(1)).to eq(9)
      expect(g.score_for_frame(2)).to eq(18)
    end
  end
end
