RSpec.describe Project, type: :model do
  describe 'validation' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_least(5).is_at_most(50) }
  end

  describe 'association' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:tasks) }
  end

  describe 'default scope' do
    let!(:project) { create(:project) }
    let!(:task_1) { create(:task, project: project, position: 2) }
    let!(:task_2) { create(:task, project: project, position: 3) }
    let!(:task_3) { create(:task, project: project, position: 1) }

    it 'check orders of tasks' do
      expect(project.tasks).to eq([task_3, task_1, task_2])
    end
  end
end
