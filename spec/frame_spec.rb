require "spec_helper"

describe "when no throw" do
  it "should be scored 0"  do
    f = Frame.new
    expect(f.get_score).to eq(0)
  end
end

describe "when 1 throw" do
  it "should be scored" do
    f = Frame.new
    f.add(5)
    expect(f.get_score).to eq(5)
  end
end
