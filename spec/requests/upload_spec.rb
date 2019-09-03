RSpec.describe 'upload', type: :request do
  include Docs::V1::ImageUploader::Api

  describe 'POST api/v1/images/upload' do
    include Docs::V1::ImageUploader::Upload

    let(:file) { fixture_file_upload('images/1.png', 'image/png') }

    before { post '/api/v1/images/upload', params: { file: file }, headers: default_headers }

    after { FileUtils.rm_rf(Dir[Rails.root.join('public', 'uploads', 'cache')]) }

    it 'returns image metadata', :dox do
      expect(response).to match_response_schema('uploads/image_metadata')
      expect(status).to eq(200)
    end
  end
end
