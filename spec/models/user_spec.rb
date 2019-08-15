RSpec.describe User, type: :model do
  describe 'email validation' do
    it { is_expected.to validate_presence_of(:email) }
    # it { is_expected.to validate_uniqueness_of(:email) }
    it { is_expected.to validate_length_of(:email).is_at_least(5).is_at_most(50) }
  end

  describe 'password validation' do
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_length_of(:password).is_at_least(5).is_at_most(50) }
  end
end