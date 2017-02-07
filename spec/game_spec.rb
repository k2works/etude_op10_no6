require "spec_helper"

describe "when one throw" do
  it "should be scored" do
    f = Game.new
    f.add(5)
    expect(f.score).to eq(5)
  end
end
