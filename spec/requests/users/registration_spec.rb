RSpec.describe 'Registration', type: :request do
  include Docs::V1::Registration::Api
  describe 'POST /sign_up' do
    include Docs::V1::Registration::Create
    let(:attrs) { attributes_for(:user) }

    context 'with valid params' do
      let(:params) { { data: { attributes: attrs.merge(password_confirmation: attrs[:password]) } } }

      it 'when success', :dox do
        post '/api/v1/users/registration', params: params
        expect(status).to eq(200)
        expect(response).to match_json_schema('users/registration/create')
      end
    end

    context 'with invalid params' do
      let(:params) { { data: { attributes: attrs.merge(password_confirmation: 'lol') } } }

      it 'when not created', :dox do
        post '/api/v1/users/registration', params: params
        expect(status).to eq(422)
        expect(response).to match_json_schema('users/registration/create_error')
      end
    end
  end
end
