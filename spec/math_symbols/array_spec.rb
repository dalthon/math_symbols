using MathSymbols if ENV['WITH_REFINEMENTS']

RSpec.describe Array do
  it 'returns empty array on ø' do
    expect(Array.ø).to eq []
  end

  it 'returns empty array on Ø' do
    expect(Array.ø).to eq []
  end
end
