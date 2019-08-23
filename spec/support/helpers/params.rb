module Helpers
  module Params
    def build_params(params)
      {
        data: {
          attributes: params
        }
      }.to_json
    end
  end
end
