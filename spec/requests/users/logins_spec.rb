RSpec.describe 'Logins', type: :request do
  include Docs::V1::Login::Api
  let(:user) { create(:user) }
  let(:access_token) { tokens[:access] }
  let(:headers_data) { { 'Authorization': access_token } }

  describe 'POST /sign_in' do
    include Docs::V1::Login::Create
    before { post '/api/v1/users/login', params: params, as: :json }

    context 'with valid params' do
      let(:params) { { data: { type: 'user', email: user.email, password: user.password } } }

      it 'when success', :dox do
        expect(status).to eq(200)
        expect(response).to match_json_schema('users/login/create')
      end
    end

    context 'with invalid params' do
      let(:params) { { data: { type: 'user', email: user.email.succ, password: user.password } } }

      it 'when not found', :dox do
        expect(status).to eq(401)
        expect(body).to be_empty
      end
    end
  end

  describe 'DELETE /sign_out' do
    include Docs::V1::Login::Destroy
    before { delete '/api/v1/users/login', headers: headers_data }

    context 'when token exist' do
      let(:tokens) do
        JWTSessions::Session.new(payload: { user_id: user.id }, refresh_by_access_allowed: true).login
      end

      it 'when destroy a session', :dox do
        expect(status).to eq(204)
      end
    end

    context 'when token does not exist' do
      let(:tokens) { { lol: 'kek' } }

      it 'when destroy a session', :dox do
        expect(status).to eq(401)
      end
    end
  end
end
