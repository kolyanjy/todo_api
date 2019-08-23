RSpec.shared_examples 'unathorized' do
  it 'returns unauthorized status', :dox do
    expect(status).to eq(401)
    expect(body).to be_empty
  end
end
