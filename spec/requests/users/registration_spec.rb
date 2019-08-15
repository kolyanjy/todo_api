RSpec.describe 'Registration', type: :request do

  describe 'POST /sign_up' do
    let(:attrs) { attributes_for(:user) }


    context 'with valid params' do
      let(:params) { { user: attrs.merge(password_confirmation: attrs[:password]) } }

      it 'when success', :dox do
        post '/api/v1/users/registration', params: params
        expect(status).to eq(201)
      end
    end

    context 'with invalid params' do
      let(:params) { { user: attrs.merge(password_confirmation: 'lol') } }

      it 'when not created', :dox do
        post '/api/v1/users/registration', params: params
        expect(status).to eq(400)
      end
    end
  end
end