RSpec.describe 'tasks', type: :request do
  include Docs::V1::Tasks::Api

  let!(:project) { create(:project, user: user) }
  let!(:task) { create(:task, project: project, position: 2) }
  let!(:another_task) { create(:task) }

  describe 'GET projects/:project_id/tasks' do
    include Docs::V1::Tasks::Index

    before { get api_v1_project_tasks_path(project.id), headers: default_headers.merge(auth_header) }

    it 'returns collection of project`s tasks', :dox do
      expect(status).to eq(200)
      expect(response).to match_response_schema('tasks/collection_of_entities')
      expect(body).not_to include(another_task.name)
    end

    context 'when unauthorized user' do
      before { get api_v1_project_tasks_path(project.id), headers: default_headers }

      include_examples 'unathorized'
    end
  end

  describe 'GET /tasks/:id' do
    include Docs::V1::Tasks::Show

    context 'when success find task' do
      before { get api_v1_task_path(task.id), headers: default_headers.merge(auth_header) }

      it 'returns one task', :dox do
        expect(response).to match_response_schema('tasks/one_entity')
        expect(status).to eq(200)
      end
    end

    context 'when task not found' do
      before { get api_v1_task_path(0), headers: default_headers.merge(auth_header) }

      include_examples 'not found'
    end

    context 'when the user tries to get not his task' do
      before { get api_v1_task_path(another_task.id), headers: default_headers.merge(auth_header) }

      include_examples 'not found'
    end

    context 'when unauthorized user' do
      before { get api_v1_task_path(task.id), headers: default_headers }

      include_examples 'unathorized'
    end
  end

  describe 'POST /tasks' do
    include Docs::V1::Tasks::Create

    before { post api_v1_project_tasks_path(project.id), params: params, headers: default_headers.merge(auth_header) }

    context 'when success create task' do
      let(:task_attrs) { attributes_for(:task) }
      let(:params) { build_params(type: 'task', **task_attrs) }

      it 'returns one task', :dox do
        expect(response).to match_response_schema('tasks/one_entity')
        expect(status).to eq(201)
        expect(Task.last).to have_attributes(task_attrs)
      end
    end

    context 'when failed create' do
      let(:params) { build_params(type: 'task', name: '') }

      context 'when task invalid' do
        include_examples 'unprocessable entity'
      end

      context 'when unauthorized user' do
        before { post api_v1_project_tasks_path(project.id), headers: default_headers }

        include_examples 'unathorized'
      end
    end
  end

  describe 'PATCH /tasks/:id' do
    include Docs::V1::Tasks::Update

    before { patch api_v1_task_path(task.id), params: params, headers: default_headers.merge(auth_header) }

    context 'when success update task' do
      let(:new_name) { 'lolkek' }
      let(:params) { build_params(type: 'task', name: new_name) }

      it 'returns one updated task', :dox do
        expect(response).to match_response_schema('tasks/one_entity')
        expect(task.reload.name).to eq(new_name)
        expect(status).to eq(200)
      end
    end

    context 'when failed update' do
      let(:params) { build_params(type: 'task', name: '') }

      context 'when task invalid' do
        include_examples 'unprocessable entity'
      end

      context 'when unauthorized user' do
        before { patch api_v1_task_path(task.id), headers: default_headers }

        include_examples 'unathorized'
      end

      context 'when task not found' do
        before { patch api_v1_task_path(0), headers: default_headers.merge(auth_header) }

        include_examples 'not found'
      end

      context 'when the user tries update not his task' do
        let(:params) { build_params(type: 'task', name: 'asdasdasd') }

        before do
          patch api_v1_task_path(another_task.id), params: params, headers: default_headers.merge(auth_header)
        end

        include_examples 'not found'
      end
    end
  end

  describe 'DELETE /tasks/:id' do
    include Docs::V1::Tasks::Destroy

    context 'when success delete task' do
      before { delete api_v1_task_path(task.id), headers: default_headers.merge(auth_header) }

      include_examples 'no content'
    end

    context 'when task not found' do
      before { delete api_v1_task_path(0), headers: default_headers.merge(auth_header) }

      include_examples 'not found'
    end

    context 'when unauthorized user' do
      before { delete api_v1_task_path(task.id), headers: default_headers }

      include_examples 'unathorized'
    end

    context 'when the user tries delete not his task' do
      let(:params) { build_params(type: 'task', name: 'asdasdasd') }

      before do
        delete api_v1_task_path(another_task.id), params: params, headers: default_headers.merge(auth_header)
      end

      include_examples 'not found'
    end
  end

  describe 'PATCH  /api/v1/tasks/:id/position_up' do
    include Docs::V1::Tasks::PositionUp

    let!(:position_before) { task.position }

    before do
      create(:task, position: 1, project: project)
      patch position_up_api_v1_task_path(task.id), headers: default_headers.merge(auth_header)
    end

    it 'returns task with changed position', :dox do
      expect(response).to match_response_schema('tasks/one_entity')
      expect(task.reload.position).to eq(position_before - 1)
      expect(status).to eq(200)
    end

    context 'when task not found' do
      before { patch position_up_api_v1_task_path(0), headers: default_headers.merge(auth_header) }

      include_examples 'not found'
    end

    context 'when the user tries to get not his task' do
      before { patch position_up_api_v1_task_path(another_task.id), headers: default_headers.merge(auth_header) }

      include_examples 'not found'
    end

    context 'when unauthorized user' do
      before { patch position_up_api_v1_task_path(task.id), headers: default_headers }

      include_examples 'unathorized'
    end
  end

  describe 'PATCH  /api/v1/tasks/:id/position_down' do
    include Docs::V1::Tasks::PositionDown

    let!(:position_before) { task.position }

    before do
      create(:task, position: 3, project: project)
      patch position_down_api_v1_task_path(task.id), headers: default_headers.merge(auth_header)
    end

    it 'returns task with changed position', :dox do
      expect(response).to match_response_schema('tasks/one_entity')
      expect(task.reload.position).to eq(position_before + 1)
      expect(status).to eq(200)
    end

    context 'when task not found' do
      before { patch position_down_api_v1_task_path(0), headers: default_headers.merge(auth_header) }

      include_examples 'not found'
    end

    context 'when the user tries to get not his task' do
      before { patch position_down_api_v1_task_path(another_task.id), headers: default_headers.merge(auth_header) }

      include_examples 'not found'
    end

    context 'when unauthorized user' do
      before { patch position_down_api_v1_task_path(task.id), headers: default_headers }

      include_examples 'unathorized'
    end
  end
end
