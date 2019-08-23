RSpec.describe Project, type: :model do
  it { is_expected.to validate_presence_of(:name) }

  describe 'association' do
    it { is_expected.to belong_to(:user) }
  end
end
