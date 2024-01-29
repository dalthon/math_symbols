using MathSymbols if ENV['WITH_REFINEMENTS']

class FixedArray
  include Enumerable

  def each(&block)
    [1, 2, 3, 4, 5].each(&block)
  end
end

RSpec.describe Enumerable do # rubocop:disable Metrics/BlockLength
  subject { FixedArray.new }

  it 'calculates summation on ∑' do
    expect( subject.∑(&:itself) ).to eq(15)
  end

  it 'calculates product of a sequence on ∏' do
    expect( subject.∏(&:itself) ).to eq(120)
  end

  describe '∀ method' do
    it 'returns true when block matches ∀ values' do
      expect( subject.∀ { |x| x < 10 } ).to be true
    end

    it 'returns false when block does not match ∀ values' do
      expect( subject.∀ { |x| x < 3 } ).to be false
    end
  end

  describe '∃ method' do
    it 'returns true when ∃ value that match block' do
      expect( subject.∃ { |x| x < 3 } ).to be true
    end

    it 'returns false when ∄ value that match block' do
      expect( subject.∃ { |x| x > 10 } ).to be false
    end
  end

  describe '∄ method' do
    it 'returns true when ∄ value that match block' do
      expect( subject.∄ { |x| x > 10 } ).to be true
    end

    it 'returns false when ∃ value that match block' do
      expect( subject.∄ { |x| x < 3 } ).to be false
    end
  end
end
