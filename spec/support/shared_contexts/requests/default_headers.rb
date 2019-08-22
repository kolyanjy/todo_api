RSpec.shared_context 'default headers' do
  let(:default_headers) do
    {
      'Accept' => JSONAPI::MEDIA_TYPE,
      'Content-Type' => JSONAPI::MEDIA_TYPE
    }
  end
end
