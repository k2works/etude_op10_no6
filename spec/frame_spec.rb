require "spec_helper"
include EtudeOp10No6

describe Frame do
  it "should 0 score when no throw" do
    f = Frame.new
    expect(f.get_score).to eq(0)
  end

  it "should scored when one throw" do
    f = Frame.new
    f.add(5)
    expect(f.get_score).to eq(5)
  end
end