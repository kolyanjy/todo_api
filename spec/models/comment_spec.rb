
RSpec.describe Comment, type: :model do
  describe 'validation' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_least(5).is_at_most(50) }
  end

  describe 'association' do
    it { is_expected.to belong_to(:task) }
  end
end
