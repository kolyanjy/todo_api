RSpec.describe User, type: :model do
  describe 'validation' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_length_of(:email).is_at_least(5).is_at_most(50) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_length_of(:password).is_at_least(5).is_at_most(50) }
  end
end
