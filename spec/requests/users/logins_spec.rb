RSpec.describe 'Logins', type: :request do
  include Docs::V1::Login::Api
  include Helpers::Params
  include_context 'when authorize user'

  describe 'POST /sign_in' do
    include Docs::V1::Login::Create

    before { post '/api/v1/users/login', params: params, as: :json }

    context 'with valid params' do
      let(:params) { build_params(type: 'user', email: user.email, password: user.password) }

      it 'authenticate user', :dox do
        expect(status).to eq(200)
        expect(response).to match_json_schema('users/login/create')
      end
    end

    context 'with invalid params' do
      let(:params) { build_params(type: 'user', email: user.email.succ, password: user.password) }

      it 'invalid authenticate user', :dox do
        expect(status).to eq(401)
        expect(body).to be_empty
      end
    end
  end

  describe 'DELETE /sign_out' do
    include Docs::V1::Login::Destroy
    before { delete '/api/v1/users/login', headers: headers_data }

    context 'when destroy a session' do
      it 'delete session with valid token', :dox do
        expect(status).to eq(204)
      end
    end

    context 'when destroy a session' do
      let(:tokens) { { lol: 'kek' } }

      it 'delete session with invalid token', :dox do
        expect(status).to eq(401)
      end
    end
  end
end
