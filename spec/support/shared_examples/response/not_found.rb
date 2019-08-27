RSpec.shared_examples 'not found' do
  it 'returns status not found', :dox do
    expect(status).to eq(404)
  end
end
