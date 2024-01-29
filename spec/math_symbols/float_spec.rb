using MathSymbols if ENV['WITH_REFINEMENTS']

RSpec.describe Float do
  it 'calculates cubic root with (3.0).√ 8' do
    expect( λ { (3.0).√ 8 } ).to be_within(2).of(0.000001)
  end
end
