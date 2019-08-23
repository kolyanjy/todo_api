RSpec.describe 'Projects', type: :request do
  include Docs::V1::Projects::Api

  let!(:project) { create(:project, user: user) }

  describe 'GET /projects' do
    include Docs::V1::Projects::Index

    before { get api_v1_projects_path, headers: default_headers.merge(headers_data) }

    it 'return collection of projects', :dox do
      expect(status).to eq(200)
      expect(response).to match_response_schema('projects/index')
    end
  end

  describe 'GET /projects/:id' do
    include Docs::V1::Projects::Show

    context 'when success find project' do
      before { get api_v1_project_path(project.id), headers: default_headers.merge(headers_data) }

      it 'return one project', :dox do
        expect(response).to match_response_schema('projects/show')
        expect(status).to eq(200)
      end
    end

    context 'when project not found' do
      before { get api_v1_project_path(100), headers: default_headers.merge(headers_data) }

      it 'return status not found', :dox do
        expect(status).to eq(404)
      end
    end
  end

  describe 'POST /projects' do
    include Docs::V1::Projects::Create

    before { post api_v1_projects_path, params: params, headers: default_headers.merge(headers_data) }

    context 'when success create project' do

      let(:params) { build_params({type: 'project', name: 'lolkek', user_id: user.id }) }

      it 'return one project', :dox do
        expect(response).to match_response_schema('projects/create')
        expect(status).to eq(201)
      end
    end

    context 'when project not found' do
      let(:params) { build_params({type: 'project', name: '', user_id: user.id }) }

      it 'return status not found', :dox do
        expect(response).to match_response_schema('errors/entitie_error')
        expect(status).to eq(422)
      end
    end
  end

  describe 'PATCH /projects/:id' do
    include Docs::V1::Projects::Update

    before { patch api_v1_project_path(project.id), params: params, headers: default_headers.merge(headers_data) }

    context 'when success update project' do

      let(:params) { build_params({type: 'project', name: 'lolkek', user_id: user.id }) }

      it 'return one updated project', :dox do
        expect(response).to match_response_schema('projects/update')
        expect(status).to eq(200)
      end
    end

    context 'when project invalid' do
      let(:params) { build_params({type: 'project', name: '', user_id: user.id }) }

      it 'return errors for entitie', :dox do
        expect(response).to match_response_schema('errors/entitie_error')
        expect(status).to eq(422)
      end
    end
  end

  describe 'DELETE /projects/:id' do
    include Docs::V1::Projects::Destroy

    context 'when success update project' do
      before { delete api_v1_project_path(project.id), headers: default_headers.merge(headers_data) }
      it 'return status success', :dox do
        expect(status).to eq(204)
      end
    end

    context 'when project not found' do
      before { delete api_v1_project_path(100), headers: default_headers.merge(headers_data) }
      it 'return status not found', :dox do
        expect(status).to eq(404)
      end
    end
  end
end
