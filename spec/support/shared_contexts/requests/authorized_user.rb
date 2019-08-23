RSpec.shared_context 'authorized user', shared_context: :metadata do
  let!(:user) { create(:user) }
  let(:access_token) { tokens[:access] }
  let(:headers_data) { { 'Authorization': access_token } }
  let(:tokens) do
    JWTSessions::Session.new(payload: { user_id: user.id }, refresh_by_access_allowed: true).login
  end
end
