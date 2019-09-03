RSpec.shared_examples 'unprocessable entity' do
  it 'returns errors for unprocessable entity', :dox do
    expect(status).to eq(422)
    expect(response).to match_json_schema('errors/entitie_error')
  end
end
