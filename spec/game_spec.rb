require "spec_helper"
include EtudeOp10No6

describe Game do
  let(:g) { Game.new }

  it 'should be scored when two throws' do
    g.add(5)
    g.add(4)
    expect(g.score).to eq(9)
    expect(g.get_current_frame).to eq(2)
  end

  it 'should be scored when four throws' do
    g.add(5)
    g.add(4)
    g.add(7)
    g.add(2)
    expect(g.score).to eq(18)
    expect(g.score_for_frame(1)).to eq(9)
    expect(g.score_for_frame(2)).to eq(18)
    expect(g.get_current_frame).to eq(3)
  end

  it 'should be scored simple spare' do
    g.add(3)
    g.add(7)
    g.add(3)
    expect(g.score_for_frame(1)).to eq(13)
    expect(g.get_current_frame).to eq(2)
  end

  it 'should be scored simple frame after spare' do
    g.add(3)
    g.add(7)
    g.add(3)
    g.add(2)
    expect(g.score_for_frame(1)).to eq(13)
    expect(g.score_for_frame(2)).to eq(18)
    expect(g.score).to eq(18)
    expect(g.get_current_frame).to eq(3)
  end

  it 'should be scored simple strike' do
    g.add(10)
    g.add(3)
    g.add(6)
    expect(g.score_for_frame(1)).to eq(19)
    expect(g.score).to eq(28)
    expect(g.get_current_frame).to eq(3)
  end

  it 'should be scored perfect game' do
    12.times do
      g.add(10)
    end
    expect(g.score).to eq(300)
    expect(g.get_current_frame).to eq(11)
  end

  it 'should be scored last strike after last frame spare' do
    11.times do
      g.add(0)
    end
    g.add(2)
    g.add(8) # 10番目のフレームのスペア
    g.add(10) # 配列の最後にストライク
    expect(g.score).to eq(20)
  end
end