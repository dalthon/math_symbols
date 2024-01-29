RSpec.describe Hash do
  it 'returns empty hash on ø' do
    expect(Hash.ø).to eq Hash.new
  end

  it 'returns empty hash on Ø' do
    expect(Hash.ø).to eq Hash.new
  end
end
