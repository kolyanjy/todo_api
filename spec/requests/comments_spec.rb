RSpec.describe 'comments', type: :request do
  include Docs::V1::Comments::Api

  let!(:project) { create(:project, user: user) }
  let!(:task) { create(:task, project: project) }
  let!(:comment) { create(:comment, task: task) }
  let!(:another_comment) { create(:comment) }

  describe 'GET tasks/:task_id/comments' do
    include Docs::V1::Comments::Index

    before { get api_v1_task_comments_path(task.id), headers: default_headers.merge(auth_header) }

    it "returns collection of task's comments", :dox do
      expect(status).to eq(200)
      expect(response).to match_response_schema('comments/collection_of_entities')
      expect(body).not_to include(another_comment.name)
    end

    context 'when unauthorized user' do
      before { get api_v1_task_comments_path(task.id), headers: default_headers }

      include_examples 'unathorized'
    end
  end

  describe 'GET /comments/:id' do
    include Docs::V1::Comments::Show

    context 'when success find comment' do
      before { get api_v1_comment_path(comment.id), headers: default_headers.merge(auth_header) }

      it 'returns one comment', :dox do
        expect(response).to match_response_schema('comments/one_entity')
        expect(status).to eq(200)
      end
    end

    context 'when comment not found' do
      before { get api_v1_comment_path(0), headers: default_headers.merge(auth_header) }

      include_examples 'not found'
    end

    context 'when the user tries to get not his comment' do
      before { get api_v1_comment_path(another_comment.id), headers: default_headers.merge(auth_header) }

      include_examples 'not found'
    end

    context 'when unauthorized user' do
      before { get api_v1_comment_path(comment.id), headers: default_headers }

      include_examples 'unathorized'
    end
  end

  describe 'POST /comments' do
    include Docs::V1::Comments::Create

    before { post api_v1_task_comments_path(task.id), params: params, headers: default_headers.merge(auth_header) }

    context 'when success create comment' do
      let(:comment_attrs) { attributes_for(:comment) }
      let(:params) { build_params(type: 'comment', **comment_attrs) }

      it 'returns one comment', :dox do
        expect(response).to match_response_schema('comments/one_entity')
        expect(status).to eq(201)
        expect(Comment.last).to have_attributes(comment_attrs)
      end
    end

    context 'when failed create' do
      let(:params) { build_params(type: 'comment', name: '') }

      context 'when comment invalid' do
        include_examples 'unprocessable entity'
      end

      context 'when unauthorized user' do
        before { post api_v1_task_comments_path(task.id), headers: default_headers }

        include_examples 'unathorized'
      end
    end
  end

  describe 'DELETE /comments/:id' do
    include Docs::V1::Comments::Destroy

    context 'when success delete comment' do
      before { delete api_v1_comment_path(comment.id), headers: default_headers.merge(auth_header) }

      include_examples 'no content'
    end

    context 'when comment not found' do
      before { delete api_v1_comment_path(0), headers: default_headers.merge(auth_header) }

      include_examples 'not found'
    end

    context 'when unauthorized user' do
      before { delete api_v1_comment_path(comment.id), headers: default_headers }

      include_examples 'unathorized'
    end

    context 'when the user tries to delete not his comment' do
      let(:params) { build_params(type: 'comment', name: 'asdasdasd') }

      before do
        delete api_v1_comment_path(another_comment.id), params: params, headers: default_headers.merge(auth_header)
      end

      include_examples 'not found'
    end
  end
end
