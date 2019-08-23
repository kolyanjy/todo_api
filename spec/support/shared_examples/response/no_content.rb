RSpec.shared_examples 'no content' do
  it 'returns no content status', :dox do
    expect(status).to eq(204)
    expect(body).to be_empty
  end
end
