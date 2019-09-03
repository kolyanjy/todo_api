RSpec.describe 'upload', type: :request do

  describe 'POST api/v1/images/upload' do
    let(:file) { fixture_file_upload('spec/fixtures/images/1.png') }

    before { post '/api/v1/images/upload', params: { file: file }, headers: default_headers }

    it 'returns image metadata' do
      expect(response).to match_response_schema('uploads/image_metadata')
      expect(status).to eq(200)
    end
  end

end
