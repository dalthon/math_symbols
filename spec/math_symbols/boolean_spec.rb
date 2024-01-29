using MathSymbols if ENV['WITH_REFINEMENTS']

RSpec.describe TrueClass do
  it 'should perform exclusive and on ⊕' do
    expect(true.⊕ true).to  be false
    expect(true.⊕ false).to be true
  end

  it 'should perform "if and only if" on ⇔' do
    expect(true.⇔ true).to  be true
    expect(true.⇔ false).to be false
  end

  it 'should perform "if and only if" on ↔' do
    expect(true.↔ true).to  be true
    expect(true.↔ false).to be false
  end

  it 'should perform "if then" on ⇒' do
    expect(true.⇒ true).to  be true
    expect(true.⇒ false).to be false
  end
end

RSpec.describe FalseClass do
  it 'should perform exclusive and on ⊕' do
    expect(false.⊕ true).to  be true
    expect(false.⊕ false).to be false
  end

  it 'should perform "if and only if" on ⇔' do
    expect(false.⇔ true).to  be false
    expect(false.⇔ false).to be true
  end

  it 'should perform "if and only if" on ↔' do
    expect(false.↔ true).to  be false
    expect(false.↔ false).to be true
  end

  it 'should perform "if then" on ⇒' do
    expect(false.⇒ true).to  be true
    expect(false.⇒ false).to be true
  end
end
