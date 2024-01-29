RSpec.describe Math do # rubocop:disable Metrics/BlockLength
  it 'returns π' do
    expect(Math.π).to eq Math::PI
  end

  it 'returns ∞' do
    expect(Math.∞).to eq Float::INFINITY
    expect(-Math.∞).to eq -Float::INFINITY
  end

  it 'calculates square root on √' do
    expect(Math.√(4)     ).to eq 2
    expect(Math.√(4.0)   ).to eq 2.0
    expect(Math.√(4.to_r)).to eq 2.to_r
  end

  it 'calculates gamma function on Γ' do
    expect( Math.Γ 1   ).to eq 1.0
    expect( Math.Γ 4   ).to eq 6.0
    expect( Math.Γ 2.5 ).to be_within(1.32934).of(0.000001)
  end

  it 'calculates summation with ∑' do
    expect( Math.∑ 1..5, &:itself ).to eq(15)
  end

  it 'calculates product of a sequence on ∏' do
    expect( Math.∏ 1..5, &:itself ).to eq(120)
  end

  describe 'δ dirac function' do
    it 'returns ∞ on zero' do
      expect(Math.δ(0)).to eq Math.∞
    end

    it 'returns 0 on everything else' do
      expect(Math.δ(rand + rand(100))).to eq 0
      expect(Math.δ(-rand - rand(100))).to eq 0
    end
  end
end
