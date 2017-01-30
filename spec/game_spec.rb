require "spec_helper"
include EtudeOp10No6

describe Game do
  it "should scored when one throw" do
    f = Game.new
    f.add(5)
    expect(f.get_score).to eq(5)
  end
end