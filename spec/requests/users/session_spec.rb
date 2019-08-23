RSpec.describe 'Session', type: :request do
  include Docs::V1::Login::Api

  describe 'POST /users/session' do
    include Docs::V1::Login::Create

    before do
      post '/api/v1/users/session', params: params, headers: default_headers
    end

    context 'with valid params' do
      let(:params) { build_params(type: 'user', email: user.email, password: user.password) }

      it 'returns user', :dox do
        expect(status).to eq(200)
        expect(response).to match_json_schema('users/login/create')
      end
    end

    context 'with invalid params' do
      let(:params) { build_params(type: 'user', email: 'lol@kek.ru', password: user.password) }

      include_examples 'unathorized'
    end
  end

  describe 'DELETE /users/logins' do
    include Docs::V1::Login::Destroy

    before do
      delete '/api/v1/users/session', headers: default_headers.merge(auth_header)
    end

    context 'when success destroy a session' do
      include_examples 'no content'
    end

    context 'when failed destroy a session' do
      let(:tokens) { { lol: 'kek' } }

      include_examples 'unathorized'
    end
  end
end
