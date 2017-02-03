require "spec_helper"
include EtudeOp10No6

describe Game do
  it 'should scored when one throw' do
    g = Game.new
    g.add(5)
    expect(g.score).to eq(5)
  end

  it 'should scored when two throws' do
    g = Game.new
    g.add(5)
    g.add(4)
    expect(g.score).to eq(9)
  end

  it 'should scored when four throws' do
    g = Game.new
    g.add(5)
    g.add(4)
    g.add(7)
    g.add(2)
    expect(g.score).to eq(18)
    expect(g.score_for_frame(1)).to eq(9)
    expect(g.score_for_frame(2)).to eq(18)
  end
end