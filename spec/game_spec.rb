require "spec_helper"
include EtudeOp10No6

describe Game do
  it 'should scored when one throw' do
    g = Game.new
    g.add(5)
    expect(g.score).to eq(5)
  end

  it 'should scored when two throw' do
    g = Game.new
    g.add(5)
    g.add(4)
    expect(g.score).to eq(9)
  end
end