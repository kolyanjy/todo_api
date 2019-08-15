RSpec.describe 'Authentication', type: :request do

  let(:user) { create(:user) }
  let(:access_token) { @tokens[:access] }
  let(:headers_data) { { 'Authorization': access_token } }

  describe 'POST /sign_in' do
    context 'with valid params' do
      let(:params) { { email: user.email, password: user.password } }

      it 'when success', :dox do
        post '/api/v1/users/login', params: params
        expect(status).to eq(200)
        expect(response.body).to include('meta')
        expect(response).to match_json_schema('tokens/jwts_token')
      end
    end

    context 'with invalid params' do
      let(:params) { { email: user.email.succ, password: user.password } }

      it 'when not found', :dox do
        post '/api/v1/users/login', params: params
        expect(status).to eq(404)
      end
    end
  end

  describe 'DELETE /sign_out' do
    context 'when token exist' do
      before do
        @tokens = JWTSessions::Session.new(payload: { user_id: user.id }, refresh_by_access_allowed: true).login
      end

      it 'when destroy a session', :dox do
        delete '/api/v1/users/login', headers: headers_data
        expect(status).to eq(204)
      end
    end

    context 'when token does not exist' do
      before { @tokens = { lol: 'kek' } }

      it 'when destroy a session', :dox do
        delete '/api/v1/users/login', headers: headers_data
        expect(status).to eq(401)
      end
    end
  end
end