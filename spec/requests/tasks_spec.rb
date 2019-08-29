RSpec.describe 'tasks', type: :request do
  include Docs::V1::Tasks::Api
  let!(:project) { create(:project, user: user) }
  let!(:task) { create(:task, project: project) }
  let!(:anouther_task) { create(:task) }

  describe 'GET /tasks' do
    include Docs::V1::Tasks::Index

    before { get api_v1_project_tasks_path(project.id), headers: default_headers.merge(auth_header) }

    it 'returns collection of project`s tasks', :dox do
      expect(status).to eq(200)
      expect(response).to match_response_schema('tasks/collection_of_entities')
      expect(body).not_to include(anouther_task.name)
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
      before { get api_v1_task_path(anouther_task.id), headers: default_headers.merge(auth_header) }

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
      let(:params) { build_params(type: 'task', **attributes_for(:task)) }

      it 'returns one task', :dox do
        expect(response).to match_response_schema('tasks/one_entity')
        expect(status).to eq(201)
      end
    end

    context 'when failed create' do
      let(:params) { build_params(type: 'task', name: '') }

      context 'when task invalid' do
        include_examples 'unprocessable entity'
      end

      context 'when unauthorized user' do
        before { get api_v1_project_tasks_path(project.id), headers: default_headers }

        include_examples 'unathorized'
      end
    end
  end

  describe 'PATCH /tasks/:id' do
    include Docs::V1::Tasks::Update

    before { patch api_v1_task_path(task.id), params: params, headers: default_headers.merge(auth_header) }

    context 'when success update task' do
      let(:params) { build_params(type: 'task', **attributes_for(:task)) }

      it 'returns one updated task', :dox do
        expect(response).to match_response_schema('tasks/one_entity')
        expect(status).to eq(200)
      end
    end

    context 'when failed update' do
      let(:params) { build_params(type: 'task', name: '') }

      context 'when task invalid' do
        include_examples 'unprocessable entity'
      end

      context 'when unauthorized user' do
        before { get api_v1_task_path(task.id), headers: default_headers }

        include_examples 'unathorized'
      end

      context 'when task not found' do
        before { get api_v1_task_path(0), headers: default_headers.merge(auth_header) }

        include_examples 'not found'
      end

      context 'when the user tries update not his task' do
        let(:params) { build_params(type: 'task', name: 'asdasdasd') }

        before do
          patch api_v1_task_path(anouther_task.id), params: params, headers: default_headers.merge(auth_header)
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
      before { get api_v1_task_path(task.id), headers: default_headers }

      include_examples 'unathorized'
    end

    context 'when the user tries delete not his task' do
      let(:params) { build_params(type: 'task', name: 'asdasdasd') }

      before do
        delete api_v1_task_path(anouther_task.id), params: params, headers: default_headers.merge(auth_header)
      end

      include_examples 'not found'
    end
  end

  describe 'PATCH  /api/v1/tasks/:id/position_up' do
    include Docs::V1::Tasks::PositionUp

    before { patch position_up_api_v1_task_path(task.id), headers: default_headers.merge(auth_header) }

    it 'returns task with changed position', :dox do
      expect(response).to match_response_schema('tasks/one_entity')
      expect(status).to eq(200)
    end
  end

  describe 'PATCH  /api/v1/tasks/:id/position_down' do
    include Docs::V1::Tasks::PositionDown

    before { patch position_down_api_v1_task_path(task.id), headers: default_headers.merge(auth_header) }

    it 'returns task with changed position', :dox do
      expect(response).to match_response_schema('tasks/one_entity')
      expect(status).to eq(200)
    end
  end
end
