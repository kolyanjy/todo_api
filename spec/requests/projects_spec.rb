RSpec.describe 'Projects', type: :request do
  include Docs::V1::Projects::Api

  let!(:project) { create(:project, user: user) }
  let!(:anouther_project) { create(:project) }

  describe 'GET /projects' do
    include Docs::V1::Projects::Index

    before { get api_v1_projects_path, headers: default_headers.merge(auth_header) }

    it 'returns collection of user`s projects', :dox do
      expect(status).to eq(200)
      expect(response).to match_response_schema('projects/collection_of_entities')
      expect(body).not_to include(anouther_project.name)
    end

    context 'when unauthorized user' do
      before { get api_v1_projects_path, headers: default_headers }

      include_examples 'unathorized'
    end
  end

  describe 'GET /projects/:id' do
    include Docs::V1::Projects::Show

    context 'when success find project' do
      before { get api_v1_project_path(project.id), headers: default_headers.merge(auth_header) }

      it 'returns one project', :dox do
        expect(response).to match_response_schema('projects/one_entity')
        expect(status).to eq(200)
      end
    end

    context 'when project not found' do
      before { get api_v1_project_path(0), headers: default_headers.merge(auth_header) }

      include_examples 'not found'
    end

    context 'when the user tries to get not his project' do
      before { get api_v1_project_path(anouther_project.id), headers: default_headers.merge(auth_header) }

      include_examples 'not found'
    end

    context 'when unauthorized user' do
      before { get api_v1_project_path(project.id), headers: default_headers }

      include_examples 'unathorized'
    end
  end

  describe 'POST /projects' do
    include Docs::V1::Projects::Create

    before { post api_v1_projects_path, params: params, headers: default_headers.merge(auth_header) }

    context 'when success create project' do
      let(:params) { build_params(type: 'project', **attributes_for(:project)) }

      it 'returns one project', :dox do
        expect(response).to match_response_schema('projects/one_entity')
        expect(status).to eq(201)
      end
    end

    context 'when failed create' do
      let(:params) { build_params(type: 'project', name: '') }

      context 'when project invalid' do
        include_examples 'unprocessable entity'
      end

      context 'when unauthorized user' do
        before { get api_v1_projects_path, headers: default_headers }

        include_examples 'unathorized'
      end
    end
  end

  describe 'PATCH /projects/:id' do
    include Docs::V1::Projects::Update

    before { patch api_v1_project_path(project.id), params: params, headers: default_headers.merge(auth_header) }

    context 'when success update project' do
      let(:params) { build_params(type: 'project', **attributes_for(:project)) }

      it 'returns one updated project', :dox do
        expect(response).to match_response_schema('projects/one_entity')
        expect(status).to eq(200)
      end
    end

    context 'when failed update' do
      let(:params) { build_params(type: 'project', name: '') }

      context 'when project invalid' do
        include_examples 'unprocessable entity'
      end

      context 'when unauthorized user' do
        before { get api_v1_project_path(project.id), headers: default_headers }

        include_examples 'unathorized'
      end

      context 'when project not found' do
        before { get api_v1_project_path(0), headers: default_headers.merge(auth_header) }

        include_examples 'not found'
      end

      context 'when the user tries update not his project' do
        let(:params) { build_params(type: 'project', name: 'asdasdasd') }

        before do
          patch api_v1_project_path(anouther_project.id), params: params, headers: default_headers.merge(auth_header)
        end

        include_examples 'not found'
      end
    end
  end

  describe 'DELETE /projects/:id' do
    include Docs::V1::Projects::Destroy

    context 'when success delete project' do
      before { delete api_v1_project_path(project.id), headers: default_headers.merge(auth_header) }

      include_examples 'no content'
    end

    context 'when project not found' do
      before { delete api_v1_project_path(0), headers: default_headers.merge(auth_header) }

      include_examples 'not found'
    end

    context 'when unauthorized user' do
      before { get api_v1_project_path(project.id), headers: default_headers }

      include_examples 'unathorized'
    end

    context 'when the user tries delete not his project' do
      let(:params) { build_params(type: 'project', name: 'asdasdasd') }

      before do
        delete api_v1_project_path(anouther_project.id), params: params, headers: default_headers.merge(auth_header)
      end

      include_examples 'not found'
    end
  end
end
