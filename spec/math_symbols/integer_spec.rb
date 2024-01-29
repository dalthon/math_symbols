using MathSymbols if ENV['WITH_REFINEMENTS']

RSpec.describe Integer do
  it 'calculates cubic root with 3.√ 8' do
    expect( λ { 3.√ 8 } ).to eq 2
  end

  it 'calculates exclusive or with ⊕' do
    expect( λ { 0b1010.⊕ 0b1100 } ).to eq( 0b1010 ^ 0b1100 )
  end

  it 'calculates "if and only if" with ⇔' do
    expect( λ { 0b1010.⇔ 0b1100 } ).to eq( 0b1001 )
  end

  it 'calculates "if and only if" with ↔' do
    expect( λ { 0b1010.↔ 0b1100 } ).to eq( 0b1001 )
  end

  it 'calculates "if then" with ⇒' do
    expect( λ { 0b1010.⇒ 0b1100 } ).to eq( 0b1101 )
  end
end
