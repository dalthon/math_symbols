RSpec.describe Object do # rubocop:disable Metrics/BlockLength
  it 'defines a function with ƒ' do
    func = ƒ { |x| x * π }
    expect( func[2] ).to eq(2*Math::PI)
  end

  it 'evaluates a block with math context with λ' do
    expect( λ { 2 * π } ).to eq(2*Math::PI)
  end

  describe '∈ method' do
    it 'returns true when x ∈ set' do
      x = Object.new
      set = [x]
      expect( x.∈ set ).to be true
    end

    it 'returns true when x ∉ set' do
      x = Object.new
      expect( x.∈ [] ).to be false
    end
  end

  describe '∉ method' do
    it 'returns false when x ∈ set' do
      x = Object.new
      set = [x]
      expect( x.∉ set ).to be false
    end

    it 'returns true when x ∉ set' do
      x = Object.new
      expect( x.∉ [] ).to be true
    end
  end

  describe MathSymbols::MathExtensions do # rubocop:disable Metrics/BlockLength
    it 'returns π' do
      expect(π).to eq Math::PI
    end

    it 'returns ∞' do
      expect(∞).to eq Float::INFINITY
      expect(-∞).to eq -Float::INFINITY
    end

    it 'calculates square root on √' do
      expect(√(4)     ).to eq 2
      expect(√(4.0)   ).to eq 2.0
      expect(√(4.to_r)).to eq 2.to_r
    end

    it 'calculates gamma function on Γ' do
      expect( Γ 1   ).to eq 1.0
      expect( Γ 4   ).to eq 6.0
      expect( Γ 2.5 ).to be_within(1.32934).of(0.000001)
    end

    it 'calculates summation with ∑' do
      expect( ∑ 1..5, &:itself ).to eq(15)
    end

    it 'calculates product of a sequence on ∏' do
      expect( ∏ 1..5, &:itself ).to eq(120)
    end

    describe 'δ dirac function' do
      it 'returns ∞ on zero' do
        expect(δ(0)).to eq ∞
      end

      it 'returns 0 on everything else' do
        expect(δ(rand + rand(100))).to eq 0
        expect(δ(-rand - rand(100))).to eq 0
      end
    end
  end
end
