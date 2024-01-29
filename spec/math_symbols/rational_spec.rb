using MathSymbols if ENV['WITH_REFINEMENTS']

RSpec.describe Rational do
  it 'calculates cubic root with (3/1).√ 8' do
    expect( λ { (3.to_r).√ 8 } ).to eq 2
  end
end
