RSpec.describe 'Logins', type: :request do
  include Docs::V1::Login::Api

  describe 'POST /sign_in' do
    include Docs::V1::Login::Create

    before do
      post '/api/v1/users/login', params: params, headers: default_headers
    end

    context 'with valid params' do
      let(:params) { build_params(type: 'user', email: user.email, password: user.password) }

      it 'authenticate and return user', :dox do
        expect(status).to eq(200)
        expect(response).to match_json_schema('users/login/create')
      end
    end

    context 'with invalid params' do
      let(:params) { build_params(type: 'user', email: 'lol@kek.ru', password: user.password) }

      it 'return unauthorized status', :dox do
        expect(status).to eq(401)
        expect(body).to be_empty
      end
    end
  end

  describe 'DELETE /sign_out' do
    include Docs::V1::Login::Destroy
    before do
      delete '/api/v1/users/login', headers: default_headers.merge(headers_data)
    end

    context 'when destroy a session' do
      it 'delete session with valid token', :dox do
        expect(status).to eq(204)
      end
    end

    context 'when destroy a session' do
      let(:tokens) { { lol: 'kek' } }

      it 'return unauthorized status', :dox do
        expect(status).to eq(401)
      end
    end
  end
end
