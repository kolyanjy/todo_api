RSpec.describe 'Registration', type: :request do
  include Docs::V1::Registration::Api

  describe 'POST /sign_up' do
    include Docs::V1::Registration::Create

    before do
      post '/api/v1/users/registration', params: params, headers: default_headers
    end

    let(:attrs) { attributes_for(:user) }

    context 'with valid params' do
      let(:params) { build_params(attrs.merge(password_confirmation: attrs[:password])) }

      it 'create and return user', :dox do
        expect(status).to eq(200)
        expect(response).to match_json_schema('users/registration/create')
      end
    end

    context 'with invalid params' do
      let(:params) { build_params(attrs.merge(password_confirmation: 'lol')) }

      it 'return errors for user', :dox do
        expect(status).to eq(422)
        expect(response).to match_json_schema('errors/entitie_error')
      end
    end
  end
end
